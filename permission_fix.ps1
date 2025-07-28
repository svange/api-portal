# Load environment variables from .env file
get-content .env | foreach {
    $name, $value = $_.split('=')
    if ([string]::IsNullOrWhiteSpace($name) -or $name.Contains('#')) {
        # skip empty or comment line in ENV file
        return
    }
    set-content env:\$name $value
}

# Get AWS account ID
$accountId = (aws sts get-caller-identity --query 'Account' --output text)
# Set your GitHub org/user and repo
$githubUserOrOrg = $env:GH_ACCOUNT
$githubRepo = $env:GH_REPO
$projectPrefix = ($githubRepo.Substring(0, [Math]::Min(9, $githubRepo.Length)))  # first 9 chars

echo "Project prefix: $projectPrefix"
echo "GitHub User/Org: $githubUserOrOrg"
echo "GitHub Repo: $githubRepo"


# Find the generated pipeline execution role
$roleName = aws iam list-roles `
  --query "Roles[?starts_with(RoleName, 'aws-sam-cli-managed-${projectPrefix}') && contains(RoleName, 'PipelineExecutionRole')].RoleName" `
  --output text

if (-not $roleName) {
    Write-Error "Could not find a PipelineExecutionRole for project prefix $projectPrefix"
    exit 1
}

# Define the trust policy
$trustPolicy = @"
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::${accountId}:oidc-provider/token.actions.githubusercontent.com"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "token.actions.githubusercontent.com:aud": "sts.amazonaws.com"
        },
        "StringLike": {
          "token.actions.githubusercontent.com:sub": [
            "repo:${githubUserOrOrg}/${githubRepo}:ref:refs/heads/fix/*",
            "repo:${githubUserOrOrg}/${githubRepo}:ref:refs/heads/feat/*",
            "repo:${githubUserOrOrg}/${githubRepo}:ref:refs/heads/dev",
            "repo:${githubUserOrOrg}/${githubRepo}:ref:refs/heads/main"
          ]
        }
      }
    }
  ]
}

"@

echo "Updating trust policy for role: $roleName"
echo "Trust policy: $trustPolicy"

# Update the role trust policy
aws iam update-assume-role-policy `
  --role-name $roleName `
  --policy-document $trustPolicy
