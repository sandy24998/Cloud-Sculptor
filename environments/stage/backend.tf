terraform {
  backend "s3" {
    bucket         = "cloud-sculptor-tf-state-sandeep-2026"
    key            = "stage/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}