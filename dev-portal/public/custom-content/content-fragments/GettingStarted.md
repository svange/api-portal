---
title: Getting Started
---

## Getting Started!

### Create an account and subscribe to APIs

To use any of our APIs you must create a developer account. A developer account provides an API Key for accessing our APIs, a playground for testing our APIs, and API usage metrics. Create or sign in using the buttons in the top right.

After you create a new account, you will have a new API Key but it won't be linked to any of our APIs. To activate it for a particular API, navigate to [APIs](/apis) and find the API you want. Click `subscribe`. Your API Key is now subscribed to the API and you can make calls to its methods.

### Integration Options

**Python SDK**: Our APIs come with a comprehensive Python SDK that integrates seamlessly with your existing Python applications. The SDK includes:
- Type hints for better IDE support
- Automatic retry logic with exponential backoff
- Built-in request/response validation
- Compatible with async/await patterns

**Direct REST API**: You can also access our APIs directly via REST. All endpoints support standard HTTP methods and return JSON responses.

**AWS Integration**: Our serverless architecture is built on AWS, making it easy to integrate with your existing AWS services using IAM roles and boto3.

Use the "Try it out!" feature to get examples of the request and response shapes of our APIs. This makes an API call to the backend service using your API Key and provides a sample `curl` request with all necessary input parameters and the real response.

If you need your API Key for any reason, you can always find it on [your dashboard](/dashboard) after logging in.

### Monitor your usage

Typically each API has a usage limit set for each API Key. As you scale up your usage of the APIs, you can monitor your usage towards the limits on [your dashboard](/dashboard).