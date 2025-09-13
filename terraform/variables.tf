variable "environment" {
  default = "dev"
}

variable "project_name" {
  default = "Roboshop"

}

variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "catalogue"
  }
}

variable "aws_region" {
  description = "The AWS region for deployment."
  type        = string
  default     = "us-east-1" # Or your actual region
}

variable "zone_name" {
  default = "mydevops3.online"
  
}

variable app_version {
  
}