# Node.js API Deployment

This repository contains a simple Node.js RESTful API, containerized using Docker, with a CI/CD pipeline set up using GitHub Actions. The application is ready for deployment to cloud providers like AWS, Heroku, or DigitalOcean.

## Project Overview

This project demonstrates a basic setup for a Node.js application with a focus on deployment. It includes:

- A simple Express.js API.
- Dockerfile for containerization.
- Docker Compose setup for local development.
- GitHub Actions workflow for CI/CD.
- Deployment scripts for cloud providers.


### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/kindrew/nodejs-api-deployment.git
   cd nodejs-api-deployment
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Start the application:

   ```bash
   npm start
   ```

   The application will run on `http://localhost:3000`.

## Docker Setup

### Build and Run with Docker

To run the application inside a Docker container:

1. Build the Docker image:

   ```bash
   docker build -t nodejs-api-deployment .
   ```

2. Run the Docker container:

   ```bash
   docker run -p 3000:3000 nodejs-api-deployment
   ```

### Docker Compose

For local development with Docker Compose:

1. Start the services:

   ```bash
   docker-compose up --build
   ```

2. The application will be accessible at `http://localhost:3000`.

## CI/CD Pipeline

This project includes a GitHub Actions workflow that:

- Installs dependencies.
- Builds and tests the application.
- Builds a Docker image and pushes it to DockerHub.
- Deploys the application to a cloud provider.

The CI/CD pipeline is triggered on every push to the `main` or `staging` branches.

### GitHub Actions

The workflow is defined in `.github/workflows/ci.yml`. It performs the following steps:

1. **Checkout code**: Retrieves the code from the repository.
2. **Set up Node.js**: Installs the specified Node.js version.
3. **Install dependencies**: Runs `npm install` to install project dependencies.
4. **Build Docker image**: Builds the Docker image for the application.
5. **Push Docker image**: Pushes the Docker image to DockerHub.
6. **Deploy**: Deploys the application to the specified cloud provider.

## Deployment

### AWS Elastic Beanstalk

This project includes a sample deployment script for AWS Elastic Beanstalk.

1. Ensure that you have the AWS CLI and Elastic Beanstalk CLI installed.
2. Run the deployment script:

   ```bash
   ./deploy.sh
   ```

This script builds the Docker image, pushes it to AWS ECR, and deploys the application using Elastic Beanstalk.


### Environment Variables

Environment variables are managed using a `.env` file. Ensure that your deployment environment securely handles these variables.

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch.
3. Make your changes and commit them.
4. Push to your fork and submit a pull request.
