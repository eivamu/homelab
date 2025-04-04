variable "public_keys" {
    description = "Public keys for SSH"
    type        = string
    sensitive   = true
    default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDnuT8Hf5bEbjdjVt12xEjlB3GmzvI/+xBOnxsfe8uii+LzvMk31Jg4O4RBqqwu7VLJaIa8VA59XwIjyl30BuWacFHqnRJUqCRfl/sgsOPx2m7lnbsky4uP6IB87IpYUlEHwhlKYTtzOx87qCJTJZbOc+m+Plwya6+EYhyJhMafEp6G78F0Pe99yg9DO0SBRsCMqMZIq+VeagbB/IoubVa5OpQOug178LQQBFCedJARKmHVQW35BsSIKGn6u9ulsAWXwggnmlv61LjX2UDec16BbbVrf371/C+YvmUf81jC0J9/Cy/KXPJx6oJB23LsDBcVqXcBlqyDriwdevQCKyJMFAkEyKWUPOoZLnVm6o6g1q9Kx6MtRjTinZxg3MN9UQF+6/1igEI5LxSjFroUh3hHJMyLUx9V84BuJAbXSCtPTvot7UTIWF/1hO72sBV6pB/WBGxSFtmFT1cE01YAZA+4rzj0iNnkXf6khI5NITwg8n6Y9vUuCDEUeCzgUufZSZRiO2jz+XaXLojisss57wNknLfiPrHohSQzwMcovTa8L1sbAfm95UN08T7oDhaFR4rrvVmY8S+FKpDyj/A7hH0SmYm8j6A7bcExNhUotYHlYY+maYfGutiAYfa4r6atjqaHEgXbtHh0JY/gf4DNsU3UYxo1bMjmRMFH3gXWiuB9/w== eha@eha.no"
}

variable "pve_username" {
    description = "Proxmox API username"
    type        = string
    sensitive   = false
}

variable "pve_password" {
    description = "Proxmox API password"
    type        = string
    sensitive   = true
}

variable "pve_fqdn" {
    description = "Proxmox API address"
    type        = string
    sensitive   = false
}

variable "pve_port" {
    description = "Proxmox API port"
    type        = string
    sensitive   = false
    default     = "8006"
}

variable "pve_target_node" {
    description = "Proxmox target node"
    type        = string
    sensitive   = false
}

variable "lxc_template_path" {
    description = "Storage name and path to the LXC images"
    type        = string
    sensitive   = false
    default     = "payload:vztmpl/"
}

variable "lxc_template_ubuntu2404" {
    description = "Name of the Ubuntu 24.04 LXC image file"
    type        = string
    sensitive   = false
    default     = "ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
}

variable "lxc_password" {
    description = "Default LXC password"
    type        = string
    sensitive   = true
}

variable "lxc_storage" {
    description = "The LXC storage area"
    type        = string
    sensitive   = false
    default     = "payload"
}
