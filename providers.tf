# this is my first comment that I'm going to commit
terraform {
 # cloud {
 #       organization = "pp0kt"
 #       workspaces {
 #           name = "terra-house-pp"
 #       }
 #  } 
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
        aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  # Configuration options
}
provider "random" {
  # Configuration options
}



