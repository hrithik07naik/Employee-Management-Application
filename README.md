Employee Management Application
🚀 Project Overview
The Employee Management Application is a scalable and maintainable solution built using a 3-tier architecture. It separates the application into three distinct layers:

Presentation Layer: For user interaction.
Business Logic Layer: To handle core application logic.
Data Layer: For database interactions.
This architecture enhances scalability, maintainability, and ease of testing.

Key Features
Full CRUD functionality to manage employee records:
Create, Read, Update, and Delete employee details.
Fully automated deployment process using CI/CD pipelines.
Separate environments for Development and Production deployments.
Production deployments include approval mechanisms to ensure quality and security.
🛠️ Technology Stack
Backend: .NET 8
Infrastructure as Code (IaC):
ARM Templates
Terraform
CI/CD Pipelines:
Classic Pipelines
YAML Pipelines
Deployment Target: Azure App Service
Deployment Details
CI/CD Pipelines
CI Pipeline:

Builds the application.
Runs unit tests.
Publishes build artifacts.
CD Pipelines:

Development Environment:
Deploys the application to the development environment using Terraform and ARM templates.
Production Environment:
Includes an approval gate before deploying to the production environment.
⚙️ Prerequisites
Azure Subscription
Azure DevOps Account
Terraform Installed
Access to Azure App Service and Azure Resource Manager

 Getting Started
 Clone the Repository:
 git clone https://github.com/<your-username>/employee-management.git
 cd employee-management

 Set Up the Infrastructure:
 Navigate to the terraform/ folder
 cd terraform

 Run the following commands:
 terraform init
 terraform plan -var-file=dev.tfvars
 terraform apply -var-file=dev.tfvars

 Deploy the Application
  Trigger the CI/CD pipelines in Azure DevOps.
  

 
 
