variable "folder_id" {
  type = string
  default = "dsffsdfsdfsdfsdfsf"
}
variable "source_image_family" {
  type = string
  default = "ubuntu-1604-lts"
}
variable "service_account_key_file" {
  type = string
  default = "/Users/alexandermokhov/Documents/key.json"
}
variable "zone" {
  type = string
  default = "ru-central1-a"
}
variable "use_ipv4_nat" {
  type = string
  default = "true"
}


source "yandex" "ubuntu16" {
  service_account_key_file = "${var.service_account_key_file"
  folder_id = "${var.folder_id}"
  source_image_family = "${var.source_image_family}"
  image_name = "reddit-base-${formatdate("MM-DD-YYYY", timestamp())}"
  image_family = "reddit-base"
  ssh_username = "ubuntu"
  platform_id = "standard-v1"
  zone = "${var.zone}"
  use_ipv4_nat = "${var.use_ipv4_nat}"
}

build {
  sources = ["source.yandex.ubuntu16"]

  provisioner "shell" {
    inline = [
    "echo Waiting for apt-get to finish...",
    "a=1; while [ -n \"$(pgrep apt-get)\" ]; do echo $a; sleep 1s; a=$(expr $a + 1); done",
    "echo Done."
    ]
  }

  provisioner "shell" {
    name            = "ruby"
    script          = "./scripts/install_ruby.sh"
    execute_command = "sudo {{.Path}}"
  }

  provisioner "shell" {
    name            = "mongodb"
    script          = "./scripts/install_mongodb.sh"
    execute_command = "sudo {{.Path}}"
  }
}
