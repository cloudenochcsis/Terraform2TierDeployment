variable "project_name" {
  type        = string
  description = "Project name prefix"
  default     = "2tier-app"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for EFS mount targets"
  default     = []
}


