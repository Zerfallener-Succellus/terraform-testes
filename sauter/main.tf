module "vpc" {
  source = "./vpc"
  network_sauter_ID = var.network_sauter_ID
  subnetwork_sauter_ID = var.subnetwork_sauter_ID
  subnetwork_ip_range = var.subnetwork_ip_range
  subnetwork_region = var.subnetwork_region
}

module "instance" {
  source = "./instance"
  instance_name = var.instance_name
  network_sauter_ID = module.vpc.network_sauter_ID
  subnetwork_sauter_ID = module.vpc.subnetwork_sauter_ID
  instance_machine_type = var.instance_machine_type
  instance_zone = var.instance_zone
  instance_bd_image = var.instance_bd_image
  instance_bd_size = var.instance_bd_size
  instance_bd_type = var.instance_bd_type
}

module "disk" {
  source = "./disk"
}