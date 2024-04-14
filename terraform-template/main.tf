resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
}

# resource "aws_subnet" "my_subnet" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = var.subnet_cidr_block
#   availability_zone = var.availability_zone
# }

# Create Subnets in two different Availability Zones
resource "aws_subnet" "subnet_az1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet_az2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
}


resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_vpc.id

  # Allow inbound traffic on MariaDB port
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# resource "aws_db_subnet_group" "my_db_subnet_group" {
#   name       = "my-db-subnet-group"
#   subnet_ids = [aws_subnet.my_subnet.id]
# }
resource "aws_db_subnet_group" "my_db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [
    aws_subnet.subnet_az1.id,
    aws_subnet.subnet_az2.id
  ]
}


resource "aws_db_instance" "my_database" {
  identifier             = var.db_instance_identifier
  allocated_storage      = var.allocated_storage
  engine                 = "mariadb"
  engine_version         = "10.5" # Change to the desired MariaDB version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = "default.mariadb10.5"
  skip_final_snapshot    = true
  publicly_accessible    = false
  storage_type           = "gp2"
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  db_subnet_group_name   = aws_db_subnet_group.my_db_subnet_group.name
  multi_az               = true

  # Additional configuration
  backup_retention_period       = var.backup_retention_period
  backup_window                 = var.backup_window
  monitoring_interval           = var.monitoring_interval
  performance_insights_enabled  = var.performance_insights_enabled
  auto_minor_version_upgrade    = var.auto_minor_version_upgrade
}
