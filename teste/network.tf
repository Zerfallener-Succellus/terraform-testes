resource "google_compute_network" "vpc-sauter-uni" {
    name = var.vpc-name
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sn-sauter-uni" {
    name = "sn-sauter-uni"
    ip_cidr_range = "10.0.0.0/22"
    region = "us-central1"
    network = google_compute_network.vpc-sauter-uni.name
}


