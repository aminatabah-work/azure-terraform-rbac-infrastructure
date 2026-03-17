variable "location" {
  description = "Azure region for deployed resources"
  type        = string
  default     = "East US"
}

variable "project_name" {
  description = "Project name prefix for Azure resources"
  type        = string
  default     = "azure-rbac-lab"
}
