output "cluster_name" {
  description = "Name of GKE cluster"
  value       = google_container_cluster.primary.name
}

output "endpoint" {
  description = "Cluster endpoint"
  value       = google_container_cluster.primary.endpoint
}

output "node_pool_name" {
  description = "Name of node pool"
  value       = google_container_node_pool.primary_nodes.name
}
