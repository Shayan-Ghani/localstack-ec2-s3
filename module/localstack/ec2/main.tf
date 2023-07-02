resource "aws_instance" "test" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.target2.key_name

  tags = {
    Created_By = var.createdBy
    Name       = var.instance_name
  }
}

resource "aws_key_pair" "target2" {
  key_name   = "test-pair"
  public_key = file("/home/target2/.ssh/id_rsa.pub")
}
