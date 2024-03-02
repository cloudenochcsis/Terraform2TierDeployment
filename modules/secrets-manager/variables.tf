variable "project_name" {
  type        = string
  description = "Project name prefix"
  default     = "2tier-app"
}

variable "secret_name" {
  type        = string
  description = "Name of the database secret"
  default     = "db-credentials"
}


