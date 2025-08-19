#aws-region
variable "aws_region" {
    description = "aws region to deploy resources"
    type        = string
    default     = "us-east-1"  
}

#VPC CIDR
variable "vpc_cidr" {
    description = "CIDR block for VPC"
    type        = string
    default     = "10.0.0.0/16"  
}

#SUBNET CIDR
variable "subnet_cidr" {
    description = "CIDR block for SUBNET"
    type        = string 
    default     = "10.0.1.0/24"  
}

#EC2 Configuration
variable "instance_type" {
    description = "EC2 instance type"
    type        = string 
    default     = "t2.micro" 
    validation {
    condition     = contains(["t2.micro", "t3.micro", "t3.small"], var.instance_type)
    error_message = "Instance type must be t2.micro, t3.micro, or t3.small."
  }
}

#ISO image
variable "instance_ami" {
    description = "EC2 instance image id"
    type        = string
    default     = "ami-00ca32bbc84273381"   
}

#instance name
variable "instance_name" {
    description = "Name tag EC2 instance"
    type        = string
    default     = "app-server"  
}

#Environment Variable
variable "environment" {
    description = "environment name"
    type        = string 
    default     = "dev"
}
