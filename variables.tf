variable "region" {
  description = "The region to deploy the resources into"
  type        = string
  nullable    = false
}

variable "az" {
  description = "The region's availability zone to deploy these resources into"
  nullable    = false
}

variable "project_name" {
  description = "Application, service, etc. that will use these resources"
  type        = string
  nullable    = false
}

variable "environment" {
  description = "Environment to deploy these resources into (development, staging, or production)"
  type        = string
  nullable    = false
}

variable "instance_name" {
  description = "Unique name for this ec2 instance. Environment and project_name will be prefixed automatically to the name"
  type        = string
  nullable    = false
}

variable "instance_type" {
  description = "Type and size of ec2 instance to create"
  type        = string
  default     = "t3.micro"
}

variable "num_instances" {
  description = "The number of ec2 instances to deploy"
  type        = number
  default     = 1
}

variable "monitoring" {
  description = "Whether to enable ec2 detailed monitoring"
  type        = bool
  default     = false
}
