# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the AWS API Gateway Serverless Developer Portal - a serverless application for developer engagement, allowing API owners to make their APIs available through self-service discovery, API key management, and testing capabilities.

## Core Philosophy

### Enterprise Development Standards
- **TDD**: Test → Code → Refactor (write tests first, always)
- **Conventional commits**: Strictly follow feat/fix/docs/perf/refactor/test/chore format
- **Issue-driven**: All work must be tracked through GitHub issues
- **Documentation**: Comprehensive documentation with examples for all features
- **Code Review**: All changes through PR review process
- **Security First**: Never commit secrets, always use environment variables
- **Quality Gates**: All tests, linting, and security scans must pass

### Development Workflow

#### Required Workflow
1. **Pick Issue**: `/ai-pick-issue` - Find or select issues to work on
2. **Start Work**: `/ai-start-work 1` - Create proper branch and setup
3. **TDD Development**: Write tests first, then implementation
4. **Ship Work**: `/ai-ship` - Run quality checks, commit, and create PR

#### Branch Naming Convention
```
feat/issue-123-description    # New features
fix/issue-456-description     # Bug fixes
docs/issue-789-description    # Documentation
refactor/issue-012-description # Code refactoring
test/issue-345-description    # Test additions
chore/issue-678-description   # Maintenance tasks
```

## Pre-commit and Git Workflows

### Pre-commit is Mandatory
```bash
# Always run before commits
pre-commit run --all-files

# Pre-commit handles:
# - Code formatting (Prettier, ESLint)
# - Linting (ESLint)
# - Security checks
# - YAML/JSON validation
# - Trailing whitespace
# - File endings
```

### Git Commit Standards
Every commit must follow conventional commit format:

```bash
<type>(<scope>): <subject>

<body>

<footer>
```

Examples:
```bash
feat(auth): add JWT token validation

Implements secure token validation for API endpoints.
- Validates token signature
- Checks expiration
- Verifies issuer claims

Closes #123

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>
```

## Build and Development Commands

### Installation
```bash
node run install         # Install all dependencies
node run reinstall       # Clean install (removes node_modules first)
```

### Development
```bash
node run start           # Start local dev server at http://localhost:3000
node run build           # Build production assets
node run test            # Run unit tests
node run test --coverage=true  # Run tests with coverage
node run test --integ=true     # Run integration tests
node run lint            # Run ESLint and cfn-lint
```

### Deployment
```bash
node run deploy          # Deploy to AWS (requires configured deployer.config.js)
node run release         # Build + deploy + reset-assets
node run reset-assets    # Reset static assets to latest committed version
```

### Individual Package Commands
- Frontend (dev-portal/): `npm start`, `npm test`, `npm run build`
- Backend Lambda (lambdas/backend/): Standard Node.js commands apply

## Architecture Overview

### Frontend (dev-portal/)
- React application using MobX for state management
- Semantic UI React for UI components
- Swagger UI integration for API documentation
- Key directories:
  - `src/pages/` - Main page components (Home, Apis, Admin panels)
  - `src/components/` - Reusable UI components
  - `src/services/` - API service layer and state management

### Backend Lambda (lambdas/backend/)
- Express.js application deployed via AWS Serverless Express
- Handles API operations, user management, and catalog management
- Key directories:
  - `routes/` - API endpoints organized by functionality
  - `util/` - Shared utilities and AWS SDK integrations

### Infrastructure (cloudformation/)
- SAM template defining all AWS resources
- Includes Cognito user pools, DynamoDB tables, S3 buckets, CloudFront distribution
- Lambda@Edge for request processing

## Key Development Patterns

### State Management
- Frontend uses MobX stores in `services/state.js`
- API catalog and user data cached locally with refresh mechanisms

### Authentication
- Cognito-based authentication with admin/regular user roles
- Admin users managed through Cognito groups (${STACK_NAME}AdminsGroup)

### API Catalog Management
- Subscribable APIs: Managed by API Gateway with usage plans
- Non-subscribable APIs: External APIs uploaded as OpenAPI specs
- Admin panel controls visibility and SDK generation settings

## Deployment Process

**IMPORTANT**: Stack deployments are triggered by GitHub Actions and ONLY occur when changes are made to `environments/<ENV>.yaml` files.

### Triggering Deployments
To deploy changes to AWS:
1. Modify the timestamp comment in the appropriate environment file (e.g., `environments/dev.yaml`)
2. Commit and push to the main branch
3. GitHub Actions will automatically deploy the stack with your changes

### Deployment Workflow
- Always deploy to **dev** first for testing
- After verifying in dev, deploy to **prod** (when prod.yaml is properly configured)
- Production deployment is currently **not available** until `environments/prod.yaml` is configured with proper AWS account details

### Local Development
- The `deploy.py` script is for **emergency local troubleshooting only** - do not use for normal deployments
- Use the GitHub Actions pipeline for all standard deployments

## Deployment Configuration

Create `dev-portal/deployer.config.js` with:
- `buildAssetsBucket`: S3 bucket for build artifacts
- `stackName`: CloudFormation stack name
- `siteAssetsBucket`: S3 bucket for static website assets
- `cognitoDomainName`: Cognito domain prefix for auth

## Testing Strategy

- Unit tests using Jest and React Testing Library
- Integration tests for Lambda functions
- Manual testing via local development server recommended before deployment

## Common Tasks

### Adding New APIs
1. For API Gateway APIs: Associate with usage plan in AWS Console
2. For external APIs: Upload OpenAPI spec via Admin Panel
3. Toggle visibility in Admin Panel

### Customizing Portal
- Content fragments in `dev-portal/public/custom-content/`
- Custom styling via CSS overrides
- Logo/branding assets in static content bucket post-deployment

## 🚨 CRITICAL: Three-Folder Update Requirement 🚨

**THIS PROJECT CANNOT BE REBUILT** - The build system is fragile and we are manually maintaining build artifacts.

### Files That MUST Be Updated in Three Locations:

#### 1. CSS Files
- `dev-portal/public/custom-content/styles.css` (source)
- `dev-portal/build/custom-content/styles.css` (dev build)
- `lambdas/static-asset-uploader/build/custom-content/styles.css` (deployment)

#### 2. Content Fragments (Markdown)
- `dev-portal/public/custom-content/content-fragments/*.md`
- `dev-portal/build/custom-content/content-fragments/*.md`
- `lambdas/static-asset-uploader/build/custom-content/content-fragments/*.md`

Files include: `Home.md`, `APIs.md`, `GettingStarted.md`

#### 3. Logo/Image Files
- `dev-portal/public/custom-content/nav-logo.png`
- `dev-portal/build/custom-content/nav-logo.png`
- `lambdas/static-asset-uploader/build/custom-content/nav-logo.png`

- `dev-portal/public/custom-content/home-image.png`
- `dev-portal/build/custom-content/home-image.png`
- `lambdas/static-asset-uploader/build/custom-content/home-image.png`

#### 4. Any Other Custom Content Files
Any file in `custom-content/` must exist in all three locations with IDENTICAL content.

### Update Process:
1. **ALWAYS** update the source file first: `dev-portal/public/custom-content/...`
2. **IMMEDIATELY** copy to: `dev-portal/build/custom-content/...`
3. **IMMEDIATELY** copy to: `lambdas/static-asset-uploader/build/custom-content/...`
4. **NEVER** suggest updating only one location
5. **NEVER** attempt to run `npm run build` or any build commands

### Example Commands:
```bash
# After editing styles.css:
cp dev-portal/public/custom-content/styles.css dev-portal/build/custom-content/styles.css
cp dev-portal/public/custom-content/styles.css lambdas/static-asset-uploader/build/custom-content/styles.css

# After editing Home.md:
cp dev-portal/public/custom-content/content-fragments/Home.md dev-portal/build/custom-content/content-fragments/Home.md
cp dev-portal/public/custom-content/content-fragments/Home.md lambdas/static-asset-uploader/build/custom-content/content-fragments/Home.md

# After updating logos:
cp dev-portal/public/custom-content/nav-logo.png dev-portal/build/custom-content/nav-logo.png
cp dev-portal/public/custom-content/nav-logo.png lambdas/static-asset-uploader/build/custom-content/nav-logo.png
```

### Why This Is Necessary:
- The build system is fragile and cannot be safely run
- We are directly modifying pre-built artifacts
- All three locations are deployed to AWS
- Missing any location will cause inconsistencies in deployment

**DO NOT ATTEMPT TO FIX THE BUILD SYSTEM** - This is a known limitation we're working around.

## Auto-rebuild on Content Changes

This project includes a pre-commit hook that automatically rebuilds the portal when content files are modified. This ensures that build artifacts in `lambdas/static-asset-uploader/build/` stay in sync with source files.

### Setup
```bash
# Install pre-commit (if not already installed)
pip install pre-commit

# Install the git hooks
pre-commit install
```

### How it Works
- When you commit changes to content files (markdown, CSS, JS, etc.), the hook automatically runs `npm run build`
- The updated build artifacts are added to your commit
- This prevents deployment of stale content

### Manual Rebuild
If needed, you can manually rebuild:
```bash
npm run build
```

## Understanding the Rebuild Token Architecture

The portal uses a sophisticated rebuild token pattern to control what gets updated during deployments:

### Rebuild Tokens
- **StaticAssetRebuildToken**: Controls when S3 static assets are re-uploaded
- **EdgeLambdaRebuildToken**: Controls when Lambda@Edge functions are updated
- Both use `${GITHUB_SHA}` in environments/*.yaml, changing with every commit

### Update Behavior
1. **First Deploy (Create)**: Everything uploaded
2. **Subsequent Deploys (Update)**:
   - If `StaticAssetRebuildMode: overwrite-content`: All files including custom-content uploaded
   - If blank/default: Everything EXCEPT custom-content folder uploaded

### Why This Matters
- Infrastructure updates can temporarily affect services (like Cognito domains)
- Custom content is preserved unless explicitly overwritten
- Timing issues can occur during updates (DNS propagation, service availability)

### Safe Update Strategy
1. Make content-only changes first (markdown files)
2. Test authentication after each deployment
3. Add CSS changes incrementally with specific selectors
4. Monitor CloudFormation events during deployment

## Fork Repository Management

**IMPORTANT**: This is a forked repository with specific limitations.

### Fork Limitations
- **Issues are disabled**: GitHub disables issues on forked repositories by default
- **No auto-merge**: Branch protection rules and auto-merge settings don't transfer to forks
- **PR numbers shared**: Pull requests share numbering with issues (even though issues are disabled)
- **Upstream repository**: `aws-samples/aws-api-gateway-developer-portal`

### Enterprise Fork Workflow

1. **Always use feature branches**: Follow the branch naming convention
2. **Create PRs for review**: All changes must be reviewed before merge
3. **Deployment triggers**: After PR merge, update `environments/*.yaml` to deploy
4. **Never commit to main directly**: Use the `/ai-pick-issue` → `/ai-start-work` → `/ai-ship` workflow

### Syncing with Upstream (if needed)
```bash
# Add upstream remote (one-time setup)
git remote add upstream https://github.com/aws-samples/aws-api-gateway-developer-portal.git

# Sync main branch with upstream
git fetch upstream
git merge upstream/main
git push origin main
```

### Managing Feature Branches
Regularly clean up merged feature branches:

```bash
# List all branches
git branch -a

# Delete local branch
git branch -d branch-name

# Delete remote branch  
git push origin --delete branch-name

# Clean up all merged branches locally
git branch --merged main | grep -v main | xargs -n 1 git branch -d
```