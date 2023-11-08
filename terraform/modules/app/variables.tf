variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Connection private key file"
}

variable app_disk_image {
  description = "disk image for reddit app"
  default = "reddit-app-base"
}
variable "subnet_id" {
  description = "Subnet"
}
