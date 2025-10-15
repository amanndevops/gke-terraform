variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "Region where cluster will be created"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone for cluster nodes"
  type        = string
  default     = "us-central1-a"
}

variable "cluster_name" {
  description = "Name of GKE cluster"
  type        = string
  default     = "demo-gke-cluster"
}

variable "network_name" {
  description = "Name of VPC network"
  type        = string
  default     = "gke-vpc"
}

variable "subnet_name" {
  description = "Name of subnet"
  type        = string
  default     = "gke-subnet"
}

variable "credentials_file" {
  description = "Path to service account JSON key"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in node pool"
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "Machine type for each node"
  type        = string
  default     = "e2-medium"
}
