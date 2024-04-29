variable "project_name" {
  type        = string
  description = "Project name prefix"
  default     = "2tier-app"
}

variable "schedule" {
  type        = string
  description = "Cron schedule expression for backups"
  default     = "cron(0 12 * * ? *)"
}


