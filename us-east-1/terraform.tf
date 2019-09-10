terraform {
  required_version = ">= 0.10.5"

  backend "s3" {
    bucket         = "kr.sideeffect.terraform.state"
    key            = "us-east-1/terraform.tfstate"
    region         = "ap-northeast-1"
    encrypt        = true
    dynamodb_table = "SideEffectTerraformStateLock"
    acl            = "bucket-owner-full-control"
  }
}

