terraform {
  backend "s3" {
    bucket = "localstack-ec2-s3"
    key    = "build/test/terraform.tfstate"
    region = var.region
  }
}

provider "aws" {
  region                      = var.region
  access_key                  = var.access_key
  secret_key                  = var.secret_key
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway     = var.localstack_ip
    apigatewayv2   = var.localstack_ip
    cloudformation = var.localstack_ip
    cloudwatch     = var.localstack_ip
    dynamodb       = var.localstack_ip
    ec2            = var.localstack_ip
    es             = var.localstack_ip
    elasticache    = var.localstack_ip
    firehose       = var.localstack_ip
    iam            = var.localstack_ip
    kinesis        = var.localstack_ip
    lambda         = var.localstack_ip
    rds            = var.localstack_ip
    redshift       = var.localstack_ip
    route53        = var.localstack_ip
    s3             = "http://s3.${var.s3_host}.localstack.cloud:4566"
    secretsmanager = var.localstack_ip
    ses            = var.localstack_ip
    sns            = var.localstack_ip
    sqs            = var.localstack_ip
    ssm            = var.localstack_ip
    stepfunctions  = var.localstack_ip
    sts            = var.localstack_ip

  }
}

