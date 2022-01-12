module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.0"
  # insert the 21 required variables here

  name = "my-new-${local.vpc_name}"
  cidr = "10.0.0.0/16"
}

locals {
  vpc_name = "test"
}
