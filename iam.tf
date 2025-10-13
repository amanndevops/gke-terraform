# Give GKE, Network, and Compute permissions to your user

resource "google_project_iam_member" "gke_cluster_admin" {
  project = var.project_id
  role    = "roles/container.admin"
  member  = "user:your-email@gmail.com"
}

resource "google_project_iam_member" "network_admin" {
  project = var.project_id
  role    = "roles/compute.networkAdmin"
  member  = "user:your-email@gmail.com"
}

resource "google_project_iam_member" "instance_admin" {
  project = var.project_id
  role    = "roles/compute.instanceAdmin.v1"
  member  = "user:your-email@gmail.com"
}

resource "google_project_iam_member" "service_account_user" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "user:your-email@gmail.com"
}

resource "google_project_iam_member" "storage_admin" {
  project = var.project_id
  role    = "roles/storage.admin"
  member  = "user:your-email@gmail.com"
}
