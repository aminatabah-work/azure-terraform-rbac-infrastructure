# Azure Terraform RBAC Infrastructure

This project demonstrates how to provision secure Azure infrastructure using Terraform with a focus on role-based access control (RBAC), reproducibility, and cloud engineering best practices.

## Overview

The goal of this project is to show how Azure resources can be deployed and managed using Infrastructure as Code (IaC) while applying secure access design. This project provisions foundational Azure resources and includes an example RBAC role assignment scoped to a storage account.

## Current Azure Resources

- Azure Resource Group
- Azure Storage Account
- Azure Role Assignment (Reader)
- Azure Virtual Network
- Azure Subnet

## Security Focus

This project includes a basic Azure RBAC role assignment example to demonstrate role-based access control principles in Terraform. Permissions are scoped to a specific Azure resource to reflect secure-by-default access patterns.

## Tools Used

- Terraform
- Microsoft Azure
- GitHub
- Infrastructure as Code (IaC)

## Terraform Files

- `main.tf` – core Azure resources and RBAC assignment
- `variables.tf` – reusable input variables
- `providers.tf` – provider configuration placeholder
- `outputs.tf` – outputs placeholder
- `terraform.tfvars` – environment values

## Project Structure

```text
azure-terraform-rbac-infrastructure/
├── modules/
│   ├── compute/
│   ├── network/
│   └── security/
├── environments/
│   ├── dev/
│   └── prod/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars
├── ARCHITECTURE.md
└── README.md
