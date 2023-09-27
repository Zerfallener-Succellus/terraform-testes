// VPC

variable "network_id" {
    type = string
    default = "network1"
}

variable "sn_1_id" {
    type = string
    default = "subnetwork1"
}

variable "sn_1_ip" {
    type = string
    default = "10.0.0.0/24"
}

variable "sn_1_region" {
    type = string
    default = "us-central1" 
}

//INSTANCE

variable "instance_id" {
  type = string
  default = "instance"
}

variable "instance_machine_type" {
    type = string
    default = "e2-medium"
}

variable "instance_zone" {
    type = string
    default = "us-central1-a"
}

variable "instance_boot_disk_image" {
    type = string
    default = "debian-cloud/debian-11"
}

variable "instance_boot_disk_size" {
    type = number
    default = 10
}

variable "instance_boot_disk_type" {
    type = string
    default = "pd-balanced"
}

//DISK

variable "secondary_disk" {
    type = map(object({
        type = string
        size = number
    }))

    default = {
        "disk1" = {
            type = "pd-balanced"
            size = 5
        },
        "disk2" = {
            type = "pd-ssd"
            size = 1
        },
        "disk3" = {
            type = "pd-balanced"
            size = 3
        },
        "disk4" = {
            type = "pd-balanced"
            size = 1
        }
    }
  
}

variable "disk_zone" {
  type = string
  default = "us-central1-a"
}
