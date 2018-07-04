terraform {
  backend "s3" {
    bucket = "prd.mia-euwest1-terraform-state"
    key = "prd.mia.tfstate"
    region = "eu-west-1"
  }
}
