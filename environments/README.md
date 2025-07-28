# API Portal Environment Configuration

This directory contains environment-specific configuration files for the API Portal deployment.

## Configuration Files

### `dev.yaml`
- Development environment configuration
- Deploys to the staging AWS account
- **Status**: ENABLED ✅

### `prod.yaml`
- Production environment configuration
- Deploys to the production AWS account
- **Status**: DISABLED ⏸️

## Configuration Structure

Each environment file contains:

```yaml
environment: dev|prod
stack_name: api-portal-dev|prod
enabled: true|false  # Controls whether deployment is allowed

# AWS Configuration (all values are non-sensitive)
aws:
  region: us-east-1
  account_id: "123456789012"
  pipeline_execution_role: arn:aws:iam::123456789012:role/api-portal-GitHubActionsGitOpsRole
  cloudformation_execution_role: arn:aws:iam::123456789012:role/api-portal-CloudFormationRole
  artifacts_bucket: 123456789012-gitops-artifacts

# Stack Parameters
parameters:
  # S3 Buckets
  ArtifactsS3BucketName: augint-api-portal-dev-artifacts
  DevPortalSiteS3BucketName: augint-api-portal-dev-site
  
  # Cognito Configuration
  CognitoDomainNameOrPrefix: unique-prefix
  
  # Custom Domain Configuration (prod only)
  CustomDomainName: "portal.example.com"
  CustomDomainNameAcmCertArn: "arn:aws:acm:us-east-1:..."
  UseRoute53Nameservers: "true"
  
  # ... other parameters
```

## Deployment Control

Each environment file contains an `enabled` flag that controls whether deployments are allowed:

```yaml
enabled: true   # Allows deployment
enabled: false  # Prevents deployment (safety feature)
```

## How Deployments Work

1. When you modify and commit an environment file (dev.yaml or prod.yaml), the GitHub Actions workflow will detect the change
2. The workflow reads ALL configuration from the YAML file (no GitHub Variables needed!)
3. The workflow checks the `enabled` flag in the modified file
4. If `enabled: true`, the deployment proceeds using OIDC authentication
5. If `enabled: false`, the deployment is skipped with a helpful message

## Enabling Production Deployment

When you're ready to deploy to production:

1. Edit `prod.yaml`
2. Update these placeholders with your production values:
   - `account_id`: Your production AWS account ID
   - `pipeline_execution_role`: Update account ID in the ARN
   - `cloudformation_execution_role`: Update account ID in the ARN
   - `artifacts_bucket`: Update with your account ID
   - `CustomDomainNameAcmCertArn`: Your actual certificate ARN
3. Change `enabled: false` to `enabled: true`
4. Commit and push the change

## Custom Domain Setup

For production with custom domain:
1. Create an ACM certificate in us-east-1 (required for CloudFront)
2. Add the certificate ARN to `CustomDomainNameAcmCertArn`
3. Set `CustomDomainName` to your domain
4. Set `UseRoute53Nameservers: "true"` to create Route53 hosted zone

## Security Model

- **No Secrets**: All configuration values are non-sensitive
- **OIDC Authentication**: Uses GitHub OIDC provider for AWS authentication
- **No GitHub Variables**: Everything is in version-controlled YAML files
- **No .env Files**: Not needed since we use OIDC

## Benefits

✅ Zero secrets management  
✅ All configuration in version control  
✅ OIDC for secure AWS authentication  
✅ Simple file-based deployment triggers  
✅ Clear separation of environments  
✅ DNS and TLS support built-in