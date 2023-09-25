
resource "google_compute_instance" "instance_sauter" {
    name = var.instance_name
    machine_type = var.instance_machine_type
    zone = var.instance_zone
    
    boot_disk  {
        initialize_params {
        image = var.instance_bd_image
        size = var.instance_bd_size
        type = var.instance_bd_type
        }
    }

    network_interface{
        network = var.network_sauter_ID
        subnetwork = var.subnetwork_sauter_ID
    }
  
}