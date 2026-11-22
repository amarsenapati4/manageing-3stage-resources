variable "my-Environment" {
  type = string
  description = "This define the environment"
  default = "dev"
}

variable "ami_id" {
  type = string
  description = "This is ami id "
  default="ami-09c2df4695b7bd4d0"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "region"{
    default = "ap-southeast-2"
    type = string
  description = "This is region "
}