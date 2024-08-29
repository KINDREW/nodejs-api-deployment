#!/bin/bash

# Set environment variables
EB_APP_NAME="nodejs-api-deployment"
EB_ENV_NAME="production"

# Build the Docker image
docker build -t nodejs-api-deployment .

# Tag the image for AWS Elastic Beanstalk
docker tag nodejs-api-deployment:latest your-aws-account-id.dkr.ecr.region.amazonaws.com/nodejs-api-deployment:latest

# Push the image to AWS Elastic Beanstalk
docker push your-aws-account-id.dkr.ecr.region.amazonaws.com/nodejs-api-deployment:latest

# Deploy the application using AWS Elastic Beanstalk CLI
eb init $EB_APP_NAME --platform "Docker" --region "your-region"
eb use $EB_ENV_NAME
eb deploy
