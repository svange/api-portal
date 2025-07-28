#!/bin/bash
# Script to add Route53 permissions to the Pipeline Execution Role
# This needs to be run manually by someone with IAM admin permissions

ROLE_NAME="aws-sam-cli-managed-api-porta-PipelineExecutionRole-6xtdRaDxmNtc"

echo "🔐 Adding Route53 permissions to Pipeline Execution Role..."

# Get current policy
CURRENT_POLICY=$(aws iam get-role-policy \
  --role-name "$ROLE_NAME" \
  --policy-name PipelineExecutionRolePermissions \
  --query 'PolicyDocument' \
  --output json)

# Check if Route53 permissions already exist
if echo "$CURRENT_POLICY" | grep -q "route53:ListHostedZones"; then
  echo "✅ Route53 permissions already configured"
  exit 0
fi

# Create updated policy with Route53 permissions
cat > /tmp/updated-policy.json <<'EOF'
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Resource": "arn:aws:iam::330659553592:role/aws-sam-cli-managed-api-p-CloudFormationExecutionRo-58LbeaLhtsWy",
      "Effect": "Allow"
    },
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStackEvents",
        "cloudformation:DescribeStacks",
        "cloudformation:GetTemplate",
        "cloudformation:GetTemplateSummary",
        "cloudformation:DescribeStackResource"
      ],
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "s3:DeleteObject",
        "s3:GetObject*",
        "s3:PutObject*",
        "s3:GetBucket*",
        "s3:List*"
      ],
      "Resource": [
        "arn:aws:s3:::aws-sam-cli-managed-api-portal-dev-artifactsbucket-kcx2dfjqjvxj/*",
        "arn:aws:s3:::aws-sam-cli-managed-api-portal-dev-artifactsbucket-kcx2dfjqjvxj"
      ],
      "Effect": "Allow"
    },
    {
      "Action": [
        "route53:ListHostedZones",
        "route53:ListResourceRecordSets",
        "route53:GetHostedZone"
      ],
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "route53domains:GetDomainDetail",
        "route53domains:UpdateDomainNameservers",
        "route53domains:GetOperationDetail"
      ],
      "Resource": "*",
      "Effect": "Allow"
    }
  ]
}
EOF

# Update the policy
aws iam put-role-policy \
  --role-name "$ROLE_NAME" \
  --policy-name PipelineExecutionRolePermissions \
  --policy-document file:///tmp/updated-policy.json

if [ $? -eq 0 ]; then
  echo "✅ Successfully updated pipeline role permissions"
  echo "📋 Added permissions:"
  echo "   - route53:ListHostedZones"
  echo "   - route53:ListResourceRecordSets"
  echo "   - route53:GetHostedZone"
  echo "   - route53domains:GetDomainDetail"
  echo "   - route53domains:UpdateDomainNameservers"
  echo "   - route53domains:GetOperationDetail"
  rm /tmp/updated-policy.json
else
  echo "❌ Failed to update pipeline role permissions"
  echo "Make sure you have IAM admin permissions to run this script"
  exit 1
fi