terraform {
  required_version = ">= 1.1.0"
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

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "demo-eks-cluster"
  cluster_version = "1.26"            
  subnets         = ["${aws_subnet.private[*].id}"] 
  vpc_id          = aws_vpc.main.id

  node_groups = {
    ng1 = {
      desired_capacity = 2
      instance_type    = "t3.medium"
      min_size         = 1
      max_size         = 3
    }
  }
}


resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "demo-eks-vpc" }
}

resource "aws_subnet" "private" {
  count = 2
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
  tags = { Name = "demo-eks-subnet-${count.index}" }
}

data "aws_availability_zones" "available" {}
