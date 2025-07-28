# Branch Protection Settings for augint-api

This document outlines the recommended GitHub Repository Ruleset settings for the augint-api serverless Infrastructure as Code (IaC) project.

## Repository Ruleset Configuration

**Navigate to:** Settings → Rules → Rulesets → **Create repository ruleset**

**Note:** This repository uses GitHub's new Repository Rulesets (not classic branch protection rules) for enhanced flexibility and better auto-merge integration.

## Dev Branch Protection Ruleset

Create a ruleset named **"Development Branch Protection"** for auto-merge functionality.

#### Ruleset Settings

**General Settings:**
- **Ruleset Name**: `Development Branch Protection`
- **Enforcement Status**: `Active`
- **Target Branches**: `Include by pattern` → `dev`
- **Bypass List**:
  - Add GitHub Apps that need bypass (e.g., `github-actions`)
  - Add repository administrators for emergency access

#### Protection Rules

✅ **Restrict deletions**
- Prevents accidental deletion of the dev branch

✅ **Require pull request before merging**
- **Required number of approvals**: `0` (auto-merge handles this)
- **Dismiss stale PR approvals when new commits are pushed**: `Yes`
- **Require review from CODEOWNERS**: `No` (for development speed)

✅ **Require status checks to pass before merging**
- **Require branches to be up to date before merging**: `Yes`
- **Required status checks** (exact names from serverless-gitops.yaml):
  - `Security scanning (SAST, dependencies, licenses)`
  - `Run unit tests (no infrastructure)`
  - `Infrastructure validation (SAM validate, cfn-lint)`
  - `Deploy serverless API`
  - `Run integration tests (against deployed API)`
  - `Run E2E tests and smoke tests (all environments)`

✅ **Require conversation resolution before merging**
- Ensures all discussions are resolved before merge

✅ **Block force pushes**
- Maintains clean git history and prevents accidental overwrites

#### Advanced Settings

**Bypass permissions:**
- Repository administrators can bypass in emergencies
- GitHub Actions can bypass for automated processes

## Main Branch Protection Ruleset

Create a second ruleset named **"Production Branch Protection"** for production releases.

#### Ruleset Settings

**General Settings:**
- **Ruleset Name**: `Production Branch Protection`
- **Enforcement Status**: `Active`
- **Target Branches**: `Include by pattern` → `main`

#### Protection Rules

✅ **Restrict deletions**
- Prevents accidental deletion of main branch

✅ **Restrict pushes**
- Only administrators can push directly (emergency situations only)

✅ **Require pull request before merging**
- **Required number of approvals**: `1` (manual oversight for production)
- **Dismiss stale PR approvals when new commits are pushed**: `Yes`
- **Require review from CODEOWNERS**: `Yes`

✅ **Require status checks to pass before merging**
- **Require branches to be up to date before merging**: `Yes`
- **Required status checks** (same as dev branch):
  - `Security scanning (SAST, dependencies, licenses)`
  - `Run unit tests (no infrastructure)`
  - `Infrastructure validation (SAM validate, cfn-lint)`
  - `Deploy serverless API`
  - `Run integration tests (against deployed API)`
  - `Run E2E tests and smoke tests (all environments)`

✅ **Require conversation resolution before merging**

✅ **Block force pushes**

## Repository Settings

**Navigate to:** Settings → General → Pull Requests

### Required Settings for Auto-Merge

✅ **Allow auto-merge**
- Enables GitHub's native auto-merge functionality

✅ **Allow squash merging**
- Maintains clean commit history (recommended)

❌ **Allow merge commits** (disabled)
- Prevents noisy merge commits in history

❌ **Allow rebase merging** (disabled)  
- Reduces merge strategy complexity

✅ **Always suggest updating pull request branches**
- Helps keep branches up to date

✅ **Automatically delete head branches**
- Cleans up feature branches after merge

## Status Check Names Reference

The exact status check names that must be configured in the ruleset (from serverless-gitops.yaml):

```yaml
Required Status Checks:
- "Security scanning (SAST, dependencies, licenses)"
- "Run unit tests (no infrastructure)"  
- "Infrastructure validation (SAM validate, cfn-lint)"
- "Deploy serverless API"
- "Run integration tests (against deployed API)"
- "Run E2E tests and smoke tests (all environments)"
```

**Important:** Status check names must match exactly as they appear in the GitHub Actions workflow. Any mismatch will prevent auto-merge from working.

## Differences from augint-library

The augint-api project has additional quality gates compared to augint-library due to its Infrastructure as Code (IaC) nature:

| Project | Quality Gates | Additional Requirements |
|---------|---------------|-------------------------|
| **augint-library** | 4 gates | Unit tests, security, compliance, pre-commit |
| **augint-api** | 6 gates | + Infrastructure validation, deployment, integration/E2E tests |

This reflects the higher complexity and risk associated with serverless infrastructure deployment.

## Auto-Merge Integration

The ruleset configuration works seamlessly with the auto-merge job in `serverless-gitops.yaml`:

1. **Development branches** push to GitHub
2. **Pipeline runs** all 6 quality gates
3. **Auto-merge job** enables GitHub auto-merge if all gates pass
4. **GitHub auto-merge** waits for all required status checks
5. **Automatic merge** happens when all conditions are met

## Troubleshooting

### Common Ruleset Issues

**Auto-merge not working:**
1. Verify all 6 status checks are configured with exact names
2. Check that auto-merge is enabled in repository settings
3. Ensure the development branch is up to date
4. Confirm the PR targets the `dev` branch

**Status checks not found:**
1. Check job names in `.github/workflows/serverless-gitops.yaml`
2. Verify the pipeline has run at least once to establish status checks
3. Update ruleset with exact status check names from successful pipeline runs

**Emergency access needed:**
1. Repository administrators can bypass rulesets
2. Use "Override branch protection" option in PR interface
3. Document reason for bypass in PR comments

## Validation

To verify your ruleset configuration:

1. Create a test branch: `feat/issue-test-auto-merge`
2. Make a small change and push
3. Create PR targeting `dev` branch
4. Verify all 6 status checks appear and must pass
5. Confirm auto-merge enables when all checks pass

---

This configuration ensures robust protection for both development and production branches while enabling efficient auto-merge workflows for routine development.
