#!/usr/bin/env python3
"""
Local deployment script for API Portal
Reads configuration from environments/*.yaml and deploys using SAM
"""

import os
import sys
import yaml
import subprocess
import argparse
from datetime import datetime


def load_environment_config(env='dev'):
    """Load configuration from environment YAML file"""
    config_file = f'environments/{env}.yaml'
    
    if not os.path.exists(config_file):
        print(f"❌ Configuration file not found: {config_file}")
        sys.exit(1)
    
    with open(config_file, 'r') as f:
        config = yaml.safe_load(f)
    
    return config


def build_sam_application():
    """Build the SAM application"""
    print("📦 Building SAM application...")
    cmd = [
        'sam', 'build',
        '--template-file', 'cloudformation/template.yaml',
        '--use-container'
    ]
    
    # Use shell=True on Windows
    shell = sys.platform == 'win32'
    result = subprocess.run(cmd, capture_output=False, shell=shell)
    if result.returncode != 0:
        print("❌ SAM build failed")
        sys.exit(1)
    
    print("✅ Build complete")


def deploy_stack(config, no_execute_changeset=False):
    """Deploy the CloudFormation stack using SAM"""
    env = config['environment']
    stack_name = config['stack_name']
    aws_config = config['aws']
    parameters = config['parameters']
    
    # Check if deployment is enabled
    if not config.get('enabled', True):
        print(f"⏸️  Deployment is disabled for {env} environment")
        print("Set 'enabled: true' in the config file to enable deployment")
        sys.exit(0)
    
    print(f"🚀 Deploying {env} environment...")
    print(f"📍 Stack: {stack_name}")
    print(f"📍 Region: {aws_config['region']}")
    print(f"📍 Account: {aws_config['account_id']}")
    
    # Build parameter overrides
    param_overrides = []
    for key, value in parameters.items():
        # Replace ${GITHUB_SHA} with timestamp for local deploys
        if isinstance(value, str) and '${GITHUB_SHA}' in value:
            value = value.replace('${GITHUB_SHA}', datetime.now().strftime('%Y%m%d%H%M%S'))
        param_overrides.append(f"{key}={value}")
    
    # Build SAM deploy command
    cmd = [
        'sam', 'deploy',
        '--template-file', '.aws-sam/build/template.yaml',
        '--stack-name', stack_name,
        '--s3-bucket', aws_config['artifacts_bucket'],
        '--capabilities', 'CAPABILITY_NAMED_IAM', 'CAPABILITY_AUTO_EXPAND',
        '--region', aws_config['region'],
        '--parameter-overrides'
    ] + param_overrides
    
    if no_execute_changeset:
        cmd.append('--no-execute-changeset')
    
    # Execute deployment
    print("\n📋 Executing SAM deploy...")
    print(f"Command: {' '.join(cmd[:10])}...")  # Show first part of command
    
    # Use shell=True on Windows
    shell = sys.platform == 'win32'
    result = subprocess.run(cmd, shell=shell)
    
    if result.returncode != 0:
        print("❌ Deployment failed")
        sys.exit(1)
    
    print("✅ Deployment complete!")
    
    # Get stack outputs
    get_stack_outputs(stack_name, aws_config['region'])


def get_stack_outputs(stack_name, region):
    """Get and display stack outputs"""
    print("\n📋 Stack outputs:")
    
    cmd = [
        'aws', 'cloudformation', 'describe-stacks',
        '--stack-name', stack_name,
        '--region', region,
        '--query', 'Stacks[0].Outputs',
        '--output', 'json'
    ]
    
    # Use shell=True on Windows
    shell = sys.platform == 'win32'
    result = subprocess.run(cmd, capture_output=True, text=True, shell=shell)
    
    if result.returncode == 0:
        try:
            import json
            outputs = json.loads(result.stdout)
            if outputs:
                for output in outputs:
                    print(f"  {output['OutputKey']}: {output.get('OutputValue', 'N/A')}")
            
            # Look for website URL specifically
            website_url = next((o['OutputValue'] for o in outputs if o['OutputKey'] == 'WebsiteURL'), None)
            if website_url:
                print(f"\n🌐 Portal URL: {website_url}")
        except:
            print(result.stdout)


def delete_stack(config):
    """Delete the CloudFormation stack"""
    env = config['environment']
    stack_name = config['stack_name']
    aws_config = config['aws']
    
    print(f"🗑️  Deleting {env} stack: {stack_name}")
    
    response = input("⚠️  Are you sure? (yes/no): ")
    if response.lower() != 'yes':
        print("❌ Deletion cancelled")
        return
    
    cmd = [
        'aws', 'cloudformation', 'delete-stack',
        '--stack-name', stack_name,
        '--region', aws_config['region']
    ]
    
    # Use shell=True on Windows
    shell = sys.platform == 'win32'
    result = subprocess.run(cmd, shell=shell)
    
    if result.returncode == 0:
        print("✅ Stack deletion initiated")
        print(f"Monitor progress: aws cloudformation describe-stacks --stack-name {stack_name} --region {aws_config['region']}")
    else:
        print("❌ Stack deletion failed")


def main():
    parser = argparse.ArgumentParser(description='Deploy API Portal locally')
    parser.add_argument('action', choices=['deploy', 'delete', 'build'],
                       help='Action to perform')
    parser.add_argument('--env', default='dev', choices=['dev', 'prod'],
                       help='Environment to deploy (default: dev)')
    parser.add_argument('--no-build', action='store_true',
                       help='Skip SAM build step')
    parser.add_argument('--no-execute-changeset', action='store_true',
                       help='Create changeset but do not execute it')
    
    args = parser.parse_args()
    
    # Load environment configuration
    config = load_environment_config(args.env)
    
    if args.action == 'build':
        build_sam_application()
    elif args.action == 'deploy':
        if not args.no_build:
            build_sam_application()
        deploy_stack(config, args.no_execute_changeset)
    elif args.action == 'delete':
        delete_stack(config)


if __name__ == '__main__':
    main()