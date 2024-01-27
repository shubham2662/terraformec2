 terraform { 
   required_providers { 
     aws = { 
       source  = "hashicorp/aws" 
       version = "~> 5.0" 
     } 
   } 
 } 
  
provider "aws" {
region = "ap-south-1"

}



resource "aws_instance" "this" { 
   ami = "ami-0a0f1259dd1c90938" 
   instance_type = "t2.micro" 
     tags = { 
     Name = "test-spot" 
   } 
 } 
