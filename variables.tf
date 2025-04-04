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
