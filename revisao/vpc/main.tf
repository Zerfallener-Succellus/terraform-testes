resource "google_compute_network" "network" {

name = var.network_id
auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "sn_1" {

name = var.sn_1_id
ip_cidr_range = var.sn_1_ip
network = google_compute_network.network.id
region = var.sn_1_region

}