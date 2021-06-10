provider "aws" {
  ##using variable for region if u want it it hard coded then uncomment it
  # region = "us-east-1"
  ## i have used ec2 role for tarraform credentials authentication
  ## if u want to use Static credentials then uncomment below 2 lines
  ##access_key = var.access_key
  ##secret_key = var.secret_key
}

module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "10.0.0.0/26"
  public_cidrs  = ["10.0.0.0/28", "10.0.0.16/28"]
  private_cidrs = ["10.0.0.32/28", "10.0.0.48/28"]
  
}

