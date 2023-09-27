resource "google_compute_instance" "instance" {
    name = var.instance_id
    machine_type = var.instance_machine_type
    zone = var.instance_zone

    boot_disk {
      initialize_params {
        image = var.instance_boot_disk_image
        size = var.instance_boot_disk_size
        type = var.instance_boot_disk_type
      }
    }

    network_interface {
      network = var.network_id
      subnetwork = var.sn_1_id
    }
  
}