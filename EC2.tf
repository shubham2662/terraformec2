 terraform { 
   required_providers { 
     aws = { 
       source  = "hashicorp/aws" 
       version = "~> 5.0" 
     } 
   } 
 } 
  
provider "aws" { 

region = var.region


}
 variable "region" {
   
 }


resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}



variable "cidr_block" {

  
}

resource "aws_instance" "thids" {
  ami  = var.ami
  
  instance_type = "t2.micro"

  tags = {
    Name = "this"
  }
}

variable "ami" {
  
}
