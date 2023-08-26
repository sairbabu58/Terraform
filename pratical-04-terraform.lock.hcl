terrafor: .terraform.lock.hcl:
-------------------------------

This file content terraform and provider version details.

>5.0
<5.0
>=5.0
<=5.0
~>5.0 (5.10, 5.25, 5.48 ...etc)
>=4.0,<=5.0

#https://registry.terraform.io/ -> browse provider -> aws -> click 'user provider'

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" 
      version = "5.0"  
    }
  }
}

provider "aws" {
  # Configuration options
}


$ terraform init (working fine)


....

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" 
      version = "~>4.0"  
    }
  }
}

provider "aws" {
  # Configuration options
}

$ terraform init (it will not work. cause .terraform.lock.hcl file will block it. to make it run this command, please remove .terraform.lock.hcl file)
$ terraform init 

or

$ terraform init -upgrade
