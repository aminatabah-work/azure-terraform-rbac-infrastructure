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
variable "principal_id" {
  description = "The Azure AD principal ID to assign RBAC permissions to"
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"
}
