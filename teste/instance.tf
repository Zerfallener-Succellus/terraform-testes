resource "google_compute_instance" "instance-sauter-uni" {

name = "instance-sauter-uni"
machine_type = "e2-medium"
zone = "us-central1-a"


boot_disk {
  initialize_params{
    size = 50
    type = "pd-ssd"
    image = "debian-cloud/debian-11"
    labels = {
        vm = "vm1"
    }
  }
}


network_interface {
  network = google_compute_network.vpc-sauter-uni.name
  subnetwork = google_compute_subnetwork.sn-sauter-uni.name
}

  
}

resource "google_compute_disk" "disk-sauter-uni" {
    for_each = var.sec_disk
  labels = {
    "teste" = "labels"
  }
  name = each.key
  type = each.value.type
  zone = "us-central1-a"
  size = each.value.size
}

resource "google_compute_attached_disk" "attachement-disk-sauter-uni" {
    for_each = var.sec_disk
  disk     = google_compute_disk.disk-sauter-uni[each.key].id
  instance = google_compute_instance.instance-sauter-uni.id
}
