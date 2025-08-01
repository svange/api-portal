# Augint-Project: Ecosystem Development Hub
# Development and management commands for Augmenting Integrations

# Project configuration
PROJECT_NAME ?= augint-project
PYTHON_VERSION ?= 3.12

# Default target
.DEFAULT_GOAL := help

# =============================================================================
# Core Commands
# =============================================================================

.PHONY: help
help: ## Show this help message
	@echo "$(PROJECT_NAME) Development Commands"
	@echo ""
	@echo "Core Commands:"
	@awk 'BEGIN {FS = ":.*##"}; /^[a-zA-Z_-]+:.*##/ { printf "  %-20s %s\n", $$1, $$2 }' $(MAKEFILE_LIST) | grep -v "Ecosystem\|Docker"
	@echo ""
	@echo "Ecosystem Management:"
	@echo "  status               Show ecosystem status across all repos"
	@echo "  health               Quick dependency health check"
	@echo "  deps                 Analyze dependencies and show graph"
	@echo "  sync                 Sync all Trinity repositories"
	@echo "  issues               Show unified issue dashboard"
	@echo ""
	@echo "Docker Commands:"
	@echo "  claude               Launch Claude Code in Docker"
	@echo "  join-claude          Join existing Claude container"
	@echo "  docker-build         Build Docker images"
	@echo "  docker-stop          Stop Docker containers"
	@echo "  docker-clean         Clean up Docker resources"

.PHONY: install
install: ## Install project dependencies
	@echo "Installing dependencies..."
	@poetry install
	@echo "Dependencies installed successfully"

.PHONY: dev-install
dev-install: ## Install with development dependencies
	@echo "Installing development dependencies..."
	@poetry install --with dev,security,compliance
	@echo "Development dependencies installed successfully"

.PHONY: test
test: ## Run tests
	@echo "Running tests..."
	@pytest -m "not slow and not ci_only"

.PHONY: lint
lint: ## Run linting with fixes
	@echo "Running linter..."
	@ruff check --fix

.PHONY: format
format: ## Format code
	@echo "Formatting code..."
	@ruff format .

.PHONY: clean
clean: ## Clean build artifacts and caches
	@echo "Cleaning build artifacts..."
	@find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".ruff_cache" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true
	@rm -rf dist/ build/ htmlcov/ .coverage coverage.* pytest.log test-report.html
	@echo "Clean complete"

# =============================================================================
# Docker Commands
# =============================================================================

.PHONY: claude
claude: ## Launch Claude Code in Docker
	@echo "Launching Claude Code..."
	@docker-compose up -d dev
	@echo "Waiting for container to start..."
	@powershell -Command "Start-Sleep -Seconds 3"
	@docker-compose exec dev claude

.PHONY: join-claude
join-claude: ## Join existing Claude container
	@docker-compose exec dev /bin/bash

.PHONY: docker-build
docker-build: ## Build Docker images
	@echo "Building Docker images..."
	@docker-compose build
	@echo "Build complete"

.PHONY: docker-stop
docker-stop: ## Stop Docker containers
	@echo "Stopping Docker containers..."
	@docker-compose down

.PHONY: docker-clean
docker-clean: ## Clean up Docker resources
	@echo "Cleaning up Docker resources..."
	@docker-compose down -v --remove-orphans
	@docker system prune -f
	@echo "Docker cleanup complete"

# =============================================================================
# Ecosystem Management Commands
# =============================================================================

.PHONY: status
status: ## Show ecosystem status across all repos
	@python scripts/ecosystem-status.py status --verbose

.PHONY: health
health: ## Quick dependency health check
	@python scripts/dependency-tracker.py check

.PHONY: deps
deps: ## Analyze dependencies and show graph
	@python scripts/dependency-tracker.py analyze
	@echo ""
	@python scripts/dependency-tracker.py graph

.PHONY: sync
sync: ## Sync all Trinity repositories
	@python scripts/ecosystem-status.py sync

.PHONY: issues
issues: ## Show unified issue dashboard
	@python scripts/cross-repo-issue.py dashboard

# =============================================================================
# Convenience Aliases
# =============================================================================

.PHONY: ports
ports: ## Show ports for running containers
	@docker-compose ps