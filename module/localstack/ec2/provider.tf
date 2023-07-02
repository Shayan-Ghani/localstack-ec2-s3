provider "aws" {
  region                      = "us-west-2"
  access_key                  = "local"
  secret_key                  = "local"
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
    s3             = "http://s3.${var.localstack_ip}.localstack.cloud:4566"
    secretsmanager = var.localstack_ip
    ses            = var.localstack_ip
    sns            = var.localstack_ip
    sqs            = var.localstack_ip
    ssm            = var.localstack_ip
    stepfunctions  = var.localstack_ip
    sts            = var.localstack_ip

  }
}

