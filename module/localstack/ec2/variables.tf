variable "localstack_ip" {
  default = "http://192.168.245.195:4566"
}
variable "ami" {
  default = "ami-0c94855ba95c71c99"
}
variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {

}
variable "createdBy" {
  default = "terraform"
}

# variable "key_name" {
# }

variable "region" {
  default = "us-west-2"
}

