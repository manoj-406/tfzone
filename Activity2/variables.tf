variable "vpcid" {
  type    = string
  default = "10.0.0.0/16"

}

variable "subnet_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
  description = "subnet cidr "

}

variable "availability_zone" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1a", "ap-south-1b"]

}

variable "tags" {
  type    = list(string)
  default = ["web1", "web2", "app1", "app2"]



}