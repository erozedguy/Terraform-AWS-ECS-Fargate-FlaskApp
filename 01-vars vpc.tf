variable "cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "azs" {
  type = string
  default = "us-east-1a"
}

variable "subnet-ip" {
  type = string
  default = "10.0.1.0/24"
}
