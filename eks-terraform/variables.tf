variable "region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "demo-eks-cluster"
}

variable "node_group_name" {
  type    = string
  default = "demo-node-group"
}

variable "node_instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}

variable "desired_capacity" { type = number; default = 2 }
variable "max_capacity"     { type = number; default = 3 }
variable "min_capacity"     { type = number; default = 1 }
