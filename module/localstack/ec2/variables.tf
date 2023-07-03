variable "localstack_ip" {
  default = "http://192.168.245.195:4566"
}

variable "s3_host" {
  default = "localhost"
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


variable "access_key" {
  default = "local"
}

variable "secret_key" {
  default = "local"
}

variable "region" {
  default = "us-west-2"
}



variable "backend_bucket" {
 default = "localstack-ec2-s3"
}

variable "backend-key" {
  default = "build/test/terraform.tfstate"
}
