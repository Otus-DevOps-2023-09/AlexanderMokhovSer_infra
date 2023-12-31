variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Path to the privet key used for ssh access"
}

variable db_disk_image {
  description = "disk image for reddit-db"
  default = "reddit-db-base"
}
variable "subnet_id" {
  description = "Subnet"
}

variable prov {
  description = "using prov"
}
