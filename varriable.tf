variable "my-Environment" {
  type = string
  description = "This define the environment"
  default = "test"
}

variable "ami_id" {
  type = string
  description = "This is ami id "
  default="ami-06071c9809899e1e1"
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