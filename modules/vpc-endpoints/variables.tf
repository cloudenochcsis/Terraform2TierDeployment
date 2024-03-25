variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "route_table_ids" {
  type        = list(string)
  description = "List of route table IDs for Gateway endpoint"
  default     = []
}


