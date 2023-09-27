variable "secondary_disk" {
    type = map(object({
        type = string
        size = number
    }))

    default = {}
  
}

variable "instance_id" {
  type = string
  default = ""
}

variable "disk_zone" {
  type = string
  default = ""
}