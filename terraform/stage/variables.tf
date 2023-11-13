variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "region_id" {
  description = "region"
  default     = "ru-central1"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "image_id" {
  description = "Disk image"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key .json"
}
variable "private_key_path" {
  description = "Path to the private key for ssh access"
}
variable "instances" {
  description = "count instances"
  default     = 1
}
variable "app_disk_image" {
  description = "disk image for reddit app"
  default     = "fd82t0f5q5u7omar8gp3"
}
variable "db_disk_image" {
  description = "disk image for reddit db"
  default     = "fd869unf8578bbjpok0p"
}

variable "prov" {
  description = "using provisioner"
  default     = true
}

variable "access_key" {
  description = "key id"
  default     = "YCAJEEmERUoIJd8h8m7xkeKjw"
}
variable "secret_key" {
  description = "secret key"
  default     = "YCORBGLqQQe3G7s5BcLdHkzW6Ky7PQL6kOPbW535"
}
variable "bucket_name" {
  description = "bucket name"
}
