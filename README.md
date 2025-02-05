# SimpleTimeService

This is a simple microservice that returns the current timestamp and the IP address of the visitor in JSON format.

## Prerequisites

- Docker installed on your machine

## Build Docker Image

To build the Docker image, run the following command:

```bash
docker build -t <your-dockerhub-username>/simpletimeservice:latest .

To run the container, use the following command:

docker run -p 5000:5000 <your-dockerhub-username>/simpletimeservice:latest

test:

curl http://localhost:5000/

You should receive a JSON response like:
{
  "ip": "172.17.0.1",
  "timestamp": "2025-02-05 19:53:59"
}

TASK2:
Terraform Structure

Your repository should be organized as follows:
.
├── app
│   ├── Dockerfile
│   └── (other app files)
├── terraform
│   ├── modules
│   │   ├── vpc
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   └── outputs.tf
│   │   ├── ecs
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   └── outputs.tf
│   │   ├── lambda
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   └── outputs.tf
│   │   ├── api_gateway
│   │   │   ├── main.tf
│   │   │   └── variables.tf
│   │   └── security
│   │       ├── main.tf
│   │       └── variables.tf
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── outputs.tf
└── README.md
# SimpleTimeService Infrastructure Deployment

This repository contains the Terraform configuration to deploy the SimpleTimeService application on AWS, either using ECS or Lambda (serverless approach).

## Prerequisites

- AWS account
- Terraform installed
- AWS CLI configured with appropriate credentials

### Configure AWS CLI
Before running Terraform, configure AWS CLI to authenticate:
```bash
aws configure

This will prompt you to input:
	•	AWS Access Key ID
	•	AWS Secret Access Key
	•	Default region name
	•	Default output format

### Key Sections in the README:
1. **Prerequisites**: Instructions for configuring AWS CLI and ensuring the right permissions are set.
2. **Infrastructure Deployment**: Step-by-step guide to initialize, review, apply, and clean up the Terraform infrastructure.
3. **Accessing the Application**: Details on how to access the deployed application (ECS or Lambda).
4. **Notes**: Security advice (e.g., never push AWS credentials) and the importance of following best practices.
5. **Directory Structure**: Help users understand the repo's structure.

### Final Steps
After updating the `README.md`, add and commit it:

```bash
git add README.md
git commit -m "Added README with deployment instructions"
git push origin master

