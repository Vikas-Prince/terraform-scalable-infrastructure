# CIDR block for the VPC
vpc_cidr_block = "your-cidr-block"

# Name of the VPC
vpc_name = "your-vpc-name"

# Tenancy of instances in the VPC (options: default or dedicated)
instance_tenancy = "your-instance-tenancy"

# Availability zones for public and private subnets
availability_zone_1 = "your-availability-zone-1"
availability_zone_2 = "your-availability-zone-2"
private_subnet_az = "your-private-subnet-az"

# CIDR blocks for the public and private subnets
public_subnet_1_cidr = "your-public-subnet-1-cidr"
public_subnet_2_cidr = "your-public-subnet-2-cidr"
private_subnet_cidr = "your-private-subnet-cidr"

# Name of the S3 bucket for logging
bucket_name = "your-s3-bucket-name"

# AMI ID to use for launching EC2 instances
custom_ami_id = "your-custom-ami-id"

# Instance type for EC2 instances
instance_type = "your-instance-type"  # e.g., t2.micro

# Desired capacity of the Auto Scaling group
desired_capacity = your-desired-capacity  # e.g., 3

# Minimum size for the Auto Scaling group
min_size = your-min-size  # e.g., 2

# Maximum size for the Auto Scaling group
max_size = your-max-size  # e.g., 5

# S3 bucket prefix for load balancer access logs
access_logs_bucket_prefix = "your-lb-logs-prefix"
