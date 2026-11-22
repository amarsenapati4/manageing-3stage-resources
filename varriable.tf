variable "my-Environment" {
  type = string
  description = "This define the environment"
  default = "dev"
}

variable "ami_id" {
  type = string
  description = "This is ami id "
  default="ami-0331e43da0c1f186e"
}

variable "instance_type" {
  type = string
}

variable "region"{
    default = "ap-southeast-2"
    type = string
  description = "This is region "
}