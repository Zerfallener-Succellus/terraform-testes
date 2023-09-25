//vpc

variable "network_sauter_ID" {
type = string
default = "network1"
}

variable "subnetwork_sauter_ID" {
type = string
default = "subnetwork1"
}

variable "subnetwork_ip_range" {
type = string
default = "10.0.0.0/24"
}

variable "subnetwork_region" {
type = string
default = "us-central1"
}

//instance

variable "instance_name" {
type = string
default = "instancia"
}

variable "instance_machine_type" {
type = string
default = "e2-medium"
}

variable "instance_zone" {
type = string
default = "us-central1-a"
}

variable "instance_bd_image" {
type = string
default = "debian-cloud/debian-11"
}

variable "instance_bd_size" {
type = number
default = 10
}

variable "instance_bd_type" {
type = string
default = "pd-balanced"
}

