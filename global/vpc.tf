resource "aws_vpc" "side-effect" {
  cidr_block  = "172.31.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  instance_tenancy = "default"

  tags {
    "Name" = "side effect"
  }
}

resource "aws_vpc" "test-field" {
  cidr_block = "172.10.0.0/20"
  enable_dns_hostnames = true
  enable_dns_support = true
  instance_tenancy = "default"

  tags {
    "Name" = "test field"
  }
}
