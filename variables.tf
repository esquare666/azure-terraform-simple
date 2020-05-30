variable "prefix" {
  type    = string
  default = "learnaz104"
}

variable "azure_region" {
  type    = string
  default = "australiasoutheast"
}

variable "cidrs" { default = ["10.0.0.0/16"] }

variable "subnet_app" {
  description = "Application Subnets"
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
}

variable "tag_user_name" {
  type = string
  default = "Elayaraja Kathirvel"
}

variable "tag_env" {
  type = string
  default = "training"
}

variable "tag_project" {
  type = string
  default = "AZ-104"
}
