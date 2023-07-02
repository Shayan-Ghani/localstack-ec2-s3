resource "aws_instance" "test" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Created_By = var.createdBy
    Name       = var.instance_name
  }
}
