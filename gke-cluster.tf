resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.zone
  network  = google_compute_network.vpc_network.self_link
  subnetwork = google_compute_subnetwork.subnetwork.self_link

  remove_default_node_pool = true
  initial_node_count       = 1

  master_auth {
    username = ""
    password = ""
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  ip_allocation_policy {}
}
 