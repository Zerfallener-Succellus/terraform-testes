variable "instance_id" {
  type = string
  default = ""
}

variable "instance_machine_type" {
    type = string
    default = ""
}

variable "instance_zone" {
    type = string
    default = ""
}

variable "instance_boot_disk_image" {
    type = string
    default = ""
}

variable "instance_boot_disk_size" {
    type = number
    default = 0
}

variable "instance_boot_disk_type" {
    type = string
    default = ""
}

variable "network_id" {
    type = string
    default = ""
}

variable "sn_1_id" {
    type = string
    default = ""
}