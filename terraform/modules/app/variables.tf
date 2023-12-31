variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Connection private key file"
}

variable app_disk_image {
  description = "disk image for reddit app"
  default = "fd82t0f5q5u7omar8gp3"
}
variable "subnet_id" {
  description = "Subnet"
}

variable db_ip {
  description = "database IP"
}
variable prov {
  description = "using prov"
}
