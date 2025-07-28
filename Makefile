.PHONY: help install build preview-branding deploy-dev deploy-prod logs clean setup-poetry

# Default target
help:
	@echo "API Portal Management Commands"
	@echo "=============================="
	@echo "Development:"
	@echo "  make install          - Install all dependencies"
	@echo "  make build            - Build the portal for deployment"
	@echo "  make preview-branding - Preview branded portal locally (static only)"
	@echo "  make dev-server       - Run full development server (requires deployment)"
	@echo ""
	@echo "Deployment:"
	@echo "  make deploy-dev       - Deploy to dev environment"
	@echo "  make deploy-prod      - Deploy to production environment"
	@echo "  make logs-dev         - View CloudFormation logs for dev stack"
	@echo "  make logs-prod        - View CloudFormation logs for prod stack"
	@echo ""
	@echo "Utilities:"
	@echo "  make clean            - Clean build artifacts"
	@echo "  make setup-poetry     - Install Poetry and dependencies"
	@echo "  make validate         - Validate CloudFormation template"

# Install all dependencies
install:
	@echo "📦 Installing dependencies..."
	node run install

# Build the application
build: install
	@echo "🔨 Building application..."
	node run build

# Preview branded portal locally (static HTML only, no backend functionality)
preview-branding:
	@echo "🎨 Preparing branded preview..."
	@node -e "const fs=require('fs'); if(!fs.existsSync('dev-portal/build')){console.log('📦 Build directory not found. Please run: make build');process.exit(1)}"
	@echo "📝 Creating mock configuration for preview..."
	@node -e "const fs=require('fs'); fs.writeFileSync('dev-portal/build/config.js', 'window.config = { restApiId: \"local-preview\", region: \"us-east-1\", identityPoolId: \"local-preview\", userPoolId: \"local-preview\", userPoolClientId: \"local-preview\", userPoolDomain: \"local-preview\", feedbackEnabled: false, sellersEnabled: false }')"
	@echo "🚀 Starting preview server..."
	@echo "📝 Note: This is static preview only - no API functionality"
	@echo "🌐 Opening http://localhost:8080"
	@echo "⚡ Press Ctrl+C to stop the server"
	@npx serve dev-portal/build -l 8080

# Run full development server (requires backend to be deployed)
dev-server:
	@echo "🚀 Starting development server..."
	@echo "📝 Note: Requires backend to be deployed first"
	cd dev-portal && npm start

# Deploy to dev environment
deploy-dev:
	@echo "🚀 Triggering dev deployment..."
	@echo "📝 This will commit and push changes to environments/dev.yaml"
	@read -p "Enter commit message: " msg; \
	git add environments/dev.yaml && \
	git commit -m "feat: $$msg" && \
	git push origin main

# Deploy to production environment
deploy-prod:
	@echo "🏭 Triggering production deployment..."
	@echo "⚠️  WARNING: This will deploy to PRODUCTION!"
	@read -p "Are you sure? (yes/no): " confirm; \
	if [ "$$confirm" = "yes" ]; then \
		read -p "Enter commit message: " msg; \
		git add environments/prod.yaml && \
		git commit -m "feat: $$msg" && \
		git push origin main; \
	else \
		echo "❌ Production deployment cancelled"; \
	fi

# View CloudFormation events for dev stack
logs-dev:
	@echo "📋 Recent CloudFormation events for dev stack..."
	aws cloudformation describe-stack-events \
		--stack-name api-portal-dev \
		--region us-east-1 \
		--max-items 20 \
		--query 'StackEvents[*].[Timestamp,ResourceStatus,ResourceType,LogicalResourceId,ResourceStatusReason]' \
		--output table

# View CloudFormation events for prod stack
logs-prod:
	@echo "📋 Recent CloudFormation events for prod stack..."
	aws cloudformation describe-stack-events \
		--stack-name api-portal-prod \
		--region us-east-1 \
		--max-items 20 \
		--query 'StackEvents[*].[Timestamp,ResourceStatus,ResourceType,LogicalResourceId,ResourceStatusReason]' \
		--output table

# Clean build artifacts
clean:
	@echo "🧹 Cleaning build artifacts..."
	rm -rf dev-portal/build
	rm -rf .aws-sam
	rm -f packaged*.yaml
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "node_modules" -exec rm -rf {} + 2>/dev/null || true

# Setup Poetry and install Python dependencies
setup-poetry:
	@echo "🐍 Setting up Poetry..."
	@command -v poetry >/dev/null 2>&1 || { echo "Installing Poetry..."; curl -sSL https://install.python-poetry.org | python3 -; }
	poetry install

# Validate CloudFormation template
validate:
	@echo "✅ Validating CloudFormation template..."
	sam validate --template-file cloudformation/template.yaml --region us-east-1

# Deploy locally (bypassing GitHub Actions)
deploy-local-dev:
	@echo "🚀 Deploying to dev environment locally..."
	python deploy.py deploy --env dev

deploy-local-prod:
	@echo "🏭 Deploying to prod environment locally..."
	python deploy.py deploy --env prod

# Delete stacks locally
delete-dev:
	@echo "🗑️  Deleting dev stack..."
	python deploy.py delete --env dev

delete-prod:
	@echo "🗑️  Deleting prod stack..."
	python deploy.py delete --env prod

# Just build without deploying
build-sam:
	@echo "📦 Building SAM application..."
	python deploy.py build

# Quick preview - builds and then previews
preview: build preview-branding

# Get portal URL for an environment
url-dev:
	@echo "🌐 Dev Portal URL:"
	@aws cloudformation describe-stacks \
		--stack-name api-portal-dev \
		--region us-east-1 \
		--query 'Stacks[0].Outputs[?OutputKey==`WebsiteURL`].OutputValue' \
		--output text

url-prod:
	@echo "🌐 Production Portal URL:"
	@aws cloudformation describe-stacks \
		--stack-name api-portal-prod \
		--region us-east-1 \
		--query 'Stacks[0].Outputs[?OutputKey==`WebsiteURL`].OutputValue' \
		--output text