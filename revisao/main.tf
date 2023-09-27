module "vpc" {
  source = "./vpc"
  network_id = var.network_id
  sn_1_id = var.sn_1_id
  sn_1_ip = var.sn_1_ip
  sn_1_region = var.sn_1_region
}

module "instance" {
  source = "./instance"
  instance_id = var.instance_id
  instance_machine_type = var.instance_machine_type
  instance_zone = var.instance_zone
  instance_boot_disk_image = var.instance_boot_disk_image
  instance_boot_disk_size = var.instance_boot_disk_size
  instance_boot_disk_type = var.instance_boot_disk_type
  network_id = module.vpc.network_id
  sn_1_id = module.vpc.sn_1_id

}

module "disk" {
  source = "./disk"
  secondary_disk = var.secondary_disk
  instance_id = module.instance.instance_id
  disk_zone = var.disk_zone
}