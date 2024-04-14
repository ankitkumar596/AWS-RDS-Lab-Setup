variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-east-1a"
}

variable "db_instance_identifier" {
  description = "Identifier for the RDS instance"
  type        = string
  default     = "my-database"
}

variable "allocated_storage" {
  description = "Allocated storage for the RDS instance (in GB)"
  type        = number
  default     = 20
}

variable "instance_class" {
  description = "Instance class for the RDS instance"
  type        = string
  default     = "db.t3.xlarge"
}

variable "db_name" {
  description = "Name of the database to be created"
  type        = string
  default     = "my_database"
}

variable "db_username" {
  description = "Username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  default     = "ILoveLearning!123"
}

variable "min_allocated_storage" {
  description = "Minimum allocated storage for storage autoscaling (in GB)"
  type        = number
  default     = 20
}

variable "max_allocated_storage" {
  description = "Maximum allocated storage for storage autoscaling (in GB)"
  type        = number
  default     = 1000
}

variable "backup_retention_period" {
  description = "Number of days to retain automatic backups"
  type        = number
  default     = 7
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups occur"
  type        = string
  default     = "03:00-06:00"
}

variable "monitoring_interval" {
  description = "The interval (in seconds) between points when Enhanced Monitoring metrics are collected"
  type        = number
  default     = 0
}

variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights is enabled or not"
  type        = bool
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "Specifies whether minor engine upgrades are applied automatically to the DB instance during the maintenance window"
  type        = bool
  default     = false
}

