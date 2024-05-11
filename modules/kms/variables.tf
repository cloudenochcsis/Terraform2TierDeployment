variable "project_name" {
  type        = string
  description = "Project name prefix for KMS resources"
  default     = "2tier-app"
}

variable "deletion_window_in_days" {
  type        = number
  description = "Duration in days before key deletion"
  default     = 30
}


