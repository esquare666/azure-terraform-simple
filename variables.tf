variable "prefix" {
  type    = string
  default = "esquare666"
}

variable "azure_region" {
  type    = string
  default = "australiaeast"
}

variable "cidrs" { default = ["10.0.0.0/8"] }

variable "subnet_app1" { 
  type = string
  default = "10.0.0.0/24"
  }

variable "subnet_app2" { 
  type = string
  default = "10.0.1.0/24"
  }

variable "subnet_app3" { 
  type = string
  default = "10.0.2.0/24"
  }

variable "tag_user_name" {
  type = string
  default = "Elayaraja Kathirvel"
}
