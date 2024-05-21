variable "project_name" {
  type        = string
  description = "Project name prefix"
  default     = "2tier-app"
}

variable "alb_arn_suffix" {
  type        = string
  description = "ARN suffix of the Application Load Balancer"
  default     = ""
}

variable "asg_name" {
  type        = string
  description = "Name of the Auto Scaling Group"
  default     = ""
}

variable "rds_instance_id" {
  type        = string
  description = "ID of the RDS database instance"
  default     = ""
}


