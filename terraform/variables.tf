variable "aws_region" {
  description = "AWS region used for all project resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name used to identify project resources"
  type        = string
  default     = "aws-cicd-portfolio"
}

variable "vpc_cidr" {
  description = "CIDR block assigned to the project VPC"
  type        = string
  default     = "10.30.0.0/16"
}

variable "container_port" {
  description = "Port exposed by the application container"
  type        = number
  default     = 8080
}