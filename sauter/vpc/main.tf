resource "google_compute_network" "network_sauter" {

    name = var.network_sauter_ID
    auto_create_subnetworks = false
  
}

resource "google_compute_subnetwork" "sn_sauter" {

    name = var.subnetwork_sauter_ID
    ip_cidr_range = var.subnetwork_ip_range
    network = google_compute_network.network_sauter.id
    region = var.subnetwork_region
  
}