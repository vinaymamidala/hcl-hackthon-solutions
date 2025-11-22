resource "google_container_node_pool" "primary_nodes" {
  name       = "${var.cluster_name}-np"
  cluster    = google_container_cluster.primary.name
  location   = var.region
  node_count = 2

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
    service_account = google_service_account.gke_sa.email
  }
}

