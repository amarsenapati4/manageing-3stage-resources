variable "my-Environment" {
  type = string
  description = "This define the environment"
  default = "prod"
}

variable "ami_id" {
  type = string
  description = "This is ami id "
  default="ami-09a2f74ce8538e414"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "region"{
    default = "ap-southeast-2"
    type = string
  description = "This is region "
}