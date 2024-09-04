# CI/CD Pipeline with GitHub Actions for AWS ECS Deployment

## Overview
This project demonstrates a CI/CD pipeline using GitHub Actions to automate the deployment of a web application to AWS ECS.

## Setup Instructions
1. Clone the repository.
2. Set up AWS credentials in GitHub secrets.
3. Configure your ECS Cluster, Task Definition, and ECR repository.

## Usage
- Push changes to the `main` branch to trigger the pipeline.
- The pipeline will build, test, and deploy the application automatically.

## Testing
- Integration tests are run as part of the pipeline. The application will be rolled back if the tests fail.

## Rollback
- If the deployment fails, the pipeline will automatically rollback to the previous stable version.
