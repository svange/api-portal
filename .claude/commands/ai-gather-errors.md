Gather error logs and diagnostics from specified environment: $ARGUMENTS

Gathers recent errors, failures, and diagnostic information from the specified environment.

## Usage

```bash
# Default (dev environment)
ai gather-errors

# Specific environments
ai gather-errors local
ai gather-errors dev
ai gather-errors staging
ai gather-errors prod
ai gather-errors production
ai gather-errors main
ai gather-errors all
```

## Environment Detection

```bash
# Parse arguments
ENV="${1:-dev}"

# Normalize environment names
case "$ENV" in
  staging|dev)
    ENV="dev"
    STACK_NAME="${PROJECT_NAME}-dev"
    ;;
  prod|production|main)
    ENV="prod"
    STACK_NAME="${PROJECT_NAME}-prod"
    ;;
  local)
    ENV="local"
    STACK_NAME="${PROJECT_NAME}-${USER:-local}-local"
    ;;
  all)
    ENV="all"
    ;;
  *)
    echo "Unknown environment: $ENV"
    echo "Valid options: local, dev, staging, prod, production, main, all"
    exit 1
    ;;
esac

echo "🔍 Gathering errors from: $ENV environment"
echo "============================================"
```

## Local Environment Errors

```bash
if [ "$ENV" = "local" ] || [ "$ENV" = "all" ]; then
  echo ""
  echo "📍 LOCAL ENVIRONMENT"
  echo "===================="

  # Check Docker services
  echo "Docker Service Status:"
  docker-compose ps 2>/dev/null || echo "Docker services not running"

  # Recent Docker logs with errors
  echo ""
  echo "Recent Docker Errors (last 50 lines):"
  docker-compose logs --tail=50 2>&1 | grep -i -E "(error|exception|failed|fatal)" || echo "No errors found in Docker logs"

  # Check for test failures
  echo ""
  echo "Recent Test Failures:"
  if [ -f pytest.log ]; then
    grep -i -E "(FAILED|ERROR)" pytest.log | tail -20 || echo "No test failures found"
  else
    echo "No pytest.log found"
  fi

  # Check SAM local logs
  echo ""
  echo "SAM Local API Errors:"
  find .aws-sam/build -name "*.log" -type f -exec grep -i -E "(error|exception|failed)" {} \; 2>/dev/null | tail -20 || echo "No SAM local errors found"
fi
```

## AWS Environment Errors

```bash
gather_aws_errors() {
  local stack=$1
  local env_name=$2

  echo ""
  echo "📍 $env_name ENVIRONMENT"
  echo "===================="

  # Check stack status
  echo "Stack Status:"
  aws cloudformation describe-stacks \
    --stack-name "$stack" \
    --query 'Stacks[0].{Status:StackStatus,Reason:StackStatusReason}' \
    --output table 2>/dev/null || echo "Stack not found or not accessible"

  # Get Lambda function names
  echo ""
  echo "Recent Lambda Errors (last 30 minutes):"

  # Get all Lambda functions from stack
  FUNCTIONS=$(aws cloudformation list-stack-resources \
    --stack-name "$stack" \
    --query "StackResourceSummaries[?ResourceType=='AWS::Lambda::Function'].PhysicalResourceId" \
    --output text 2>/dev/null)

  if [ -n "$FUNCTIONS" ]; then
    for func in $FUNCTIONS; do
      echo ""
      echo "Function: $func"
      # Get recent errors from CloudWatch
      aws logs filter-log-events \
        --log-group-name "/aws/lambda/$func" \
        --start-time $(date -u -d '30 minutes ago' +%s)000 \
        --filter-pattern "[ERROR]" \
        --max-items 10 \
        --query 'events[].message' \
        --output text 2>/dev/null | head -20 || echo "  No recent errors"
    done
  else
    echo "No Lambda functions found or not accessible"
  fi

  # API Gateway errors
  echo ""
  echo "Recent API Gateway Errors:"
  API_ID=$(aws cloudformation describe-stacks \
    --stack-name "$stack" \
    --query "Stacks[0].Outputs[?OutputKey=='ApiGatewayId'].OutputValue" \
    --output text 2>/dev/null)

  if [ -n "$API_ID" ] && [ "$API_ID" != "None" ]; then
    aws logs filter-log-events \
      --log-group-name "API-Gateway-Execution-Logs_${API_ID}/Prod" \
      --start-time $(date -u -d '30 minutes ago' +%s)000 \
      --filter-pattern "{ $.status >= 400 }" \
      --max-items 10 \
      --query 'events[].message' \
      --output text 2>/dev/null | head -20 || echo "  No recent API errors"
  else
    echo "API Gateway logs not found or not accessible"
  fi
}

# Gather errors based on environment
if [ "$ENV" = "dev" ] || [ "$ENV" = "all" ]; then
  gather_aws_errors "$STACK_NAME" "DEV/STAGING"
fi

if [ "$ENV" = "prod" ] || [ "$ENV" = "all" ]; then
  gather_aws_errors "${PROJECT_NAME}-prod" "PRODUCTION"
fi
```

## Summary

```bash
echo ""
echo "============================================"
echo "✅ Error gathering complete"
echo ""
echo "💡 Tips:"
echo "- For more detailed logs, use: sam logs --stack-name <stack-name> --tail"
echo "- For real-time monitoring, use: make docker-logs (local) or AWS CloudWatch console"
echo "- Check test-report.html for detailed test failure analysis"
```

## Common Error Patterns

When reviewing errors, look for:
- **403 Forbidden**: Usually IAM permission issues or API key problems
- **500 Internal Server Error**: Lambda function crashes or unhandled exceptions
- **Connection refused**: Service not running or network issues
- **Timeout errors**: Function taking too long or cold start issues
- **Module not found**: Missing dependencies in Lambda deployment package

## Next Steps

Based on the errors found:
1. **Local errors**: Check Docker service health, review test configurations
2. **Lambda errors**: Review function logs, check error handling
3. **API errors**: Verify request formats, check authentication
4. **Infrastructure errors**: Review CloudFormation events, check IAM roles
