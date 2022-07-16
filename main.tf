
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}



provider "aws" {
  #uncomment the folowing and replace with your keys

  profile = "myaws"

  region = var.region
  #profile ="default"


}

module "ec2moodule" {
  source = "./ec2moodule"
  
}