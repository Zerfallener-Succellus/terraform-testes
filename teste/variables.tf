variable "vpc-name" {
  type = string
  default = "vpc-sauter-uni"
  description = "nome da variavel qeu da nome ao vpc"
  
}

variable "sec_disk" {
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

variable "zone" {
    type = string
    default = "us-central1-a"
}

variable "name"{
    type = string
    default = "teste"
}