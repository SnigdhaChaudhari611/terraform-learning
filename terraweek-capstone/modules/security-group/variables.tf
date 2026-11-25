
variable "vpc_id" {
  description = "ID of the VPC where the security group will be created"
  type        = string
}

variable "ingress_ports" {
  description = "List of inbound TCP ports"
  type        = list(number)
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "project_name" {
  description = "Project name used for resource tagging"
  type        = string
}

