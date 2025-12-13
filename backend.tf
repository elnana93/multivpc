terraform {
  backend "s3" {
    bucket = "e5statefiles"
    key    = "multivpc/terraform.tfstate"
    region = "us-west-2" # <--- MAKE SURE THIS MATCHES YOUR BUCKET REGION
  }
} 