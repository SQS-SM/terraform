terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }

backend "remote"{
    organization = "clone-me"

    workspaces{
        name ="supabase-deploy"
    }
}
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-04a81a99f5ec58529"
  instance_type="t2.micro"
}