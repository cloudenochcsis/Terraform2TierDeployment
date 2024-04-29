output "file_system_id" {
  value       = aws_efs_file_system.shared_fs.id
  description = "ID of the created EFS file system"
}

output "file_system_dns_name" {
  value       = aws_efs_file_system.shared_fs.dns_name
  description = "DNS name of the EFS file system"
}


