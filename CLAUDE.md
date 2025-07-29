# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the AWS API Gateway Serverless Developer Portal - a serverless application for developer engagement, allowing API owners to make their APIs available through self-service discovery, API key management, and testing capabilities.

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