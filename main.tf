module "ec2-test" {
  source = "./module/localstack/ec2"

  instance_name = "test"
  localstack_ip = "http://localhost:4566"
}
