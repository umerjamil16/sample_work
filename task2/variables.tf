# Variables
variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
}

variable "subnet_id" {
  description = "ID of the public subnet where bastion host will be launched"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for bastion host"
  type        = string
  default     = "t2.micro"
}

variable "allowed_cidr" {
  description = "CIDR block allowed to connect to bastion host"
  type        = string
  default     = "0.0.0.0/0"  # Should be restricted in production
}
