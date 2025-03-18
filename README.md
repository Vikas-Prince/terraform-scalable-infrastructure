# Terraform AWS Infrastructure Automation

## Project Overview
This repository showcases a fully automated AWS infrastructure setup using Terraform. The project demonstrates expertise in Infrastructure as Code (IaC) by automating the deployment of a custom Amazon Machine Image (AMI) with an Apache web server hosting a portfolio website. The infrastructure follows best practices, including high availability, security, and scalability.

## Features
- **Custom AMI**: Pre-configured Amazon Machine Image (AMI) with an Apache web server and static portfolio website.
- **Terraform Infrastructure**:
  - **VPC with Subnets**: A well-structured Virtual Private Cloud (VPC) includes private and public subnets with proper networking.
  - **Auto Scaling Group (ASG) in Private Subnets**: Ensures high availability and scalability.
  - **Load Balancer (ALB)**: Distributes traffic efficiently across private instances.
- **AWS Session Manager (SSM) Integration**:
  - Securely connect to private EC2 instances without requiring SSH keys or a bastion host.
  - IAM roles and instance profiles configured for SSM.
  - VPC Endpoints created to enable seamless AWS Systems Manager (SSM) access.
- **State Management**:
  - Terraform remote backend configured for efficient state management.
- **Dynamic Variables**:
  - Terraform variables used for flexibility and reusability.
- **Accessing the Website**:
  - The portfolio website is accessible via the Application Load Balancer DNS name.

## Architecture Diagram


## Prerequisites
Before deploying this infrastructure, ensure you have the following:
- AWS CLI installed and configured
- Terraform installed (version >= 1.0)
- IAM permissions to create AWS resources

## Deployment Steps

### 1. Clone the Repository
```sh
git clone https://github.com/terraform-scalable-infrastructure.git
cd terraform-scalable-infrastructure
```

### 2. Initialize Terraform
```sh
terraform init
```
### 3. Plan the Infrastructure
```sh
terraform plan
```
### 4. Deploy the Infrastructure
```sh
terraform apply -auto-approve
```

### 5. Access the Website
Once the deployment is complete, retrieve the Load Balancer DNS name:
```sh
echo $(terraform output load_balancer_endpoint)
```
Copy and paste the DNS name into your browser to view the portfolio website.

### 7. Secure Access to EC2 Instances
If you need to access the EC2 instances in the private subnet, you can use **AWS Session Manager** for secure, keyless access:

1. Go to the **AWS Systems Manager Console**.
2. Navigate to **Session Manager**.
3. Start a new session with the EC2 instance you wish to connect to.

## Cleanup
To destroy the infrastructure and avoid unnecessary charges, run:
```sh
terraform destroy -auto-approve
```

## Key Learnings
This project highlights proficiency in:
- Terraform automation for AWS infrastructure
- Secure AWS EC2 instance management using AWS SSM
- Best practices for managing infrastructure state remotely
- Auto-scaling and high availability deployment with AWS ASG and ALB

## Contributions
Feel free to fork this repository and submit pull requests for improvements or additional features.

