terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# if you did aws configure
# it will take credentials from my .aws/config file

provider "aws" {
  region = "ap-southeast-2"
}


# we need to create the instance in the default vpc and subnet. 
# so we don't have to specify any vpc or subnet. 
# terraform will automatically create the instance in the default unless specified

resource "aws_instance" "instance1" {
  ami                     = "ami-06cd706b6bacee637"
  instance_type           = "t2.micro"
  key_name                = "Avavpc"
  associate_public_ip_address = true

}

# one instance will be created