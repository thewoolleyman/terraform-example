# terraform-example

Terraform Example from https://www.terraform.io/intro/getting-started/build.html

* Create dedicated IAM user. Directly attach following policies:
    * `AmazonEC2FullAccess`
    * `AWSLambdaVPCAccessExecutionRole`
* `brew install awscli`
* `aws credentials --profile terraform-example`
* Make sure you are using a region that has a default VPC,
  and the correct AMI for that region.

