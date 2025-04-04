terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.9.0"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://${var.pve_fqdn}:${tostring(var.pve_port)}/api2/json"
  pm_user         = var.pve_username
  pm_password     = var.pve_password
  pm_tls_insecure = true
}

resource "proxmox_lxc" "lxctest" {
  target_node  = var.pve_target_node
  ostemplate   = "${var.lxc_template_path}${var.lxc_template_ubuntu2404}"
  hostname     = "lxctest"
  password     = var.lxc_password
  cores        = 2
  memory       = 2048
  swap         = 512
  unprivileged = true

  rootfs {
    storage = var.lxc_storage
    size    = "20G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "10.10.10.170/24"
    gw     = "10.10.10.1"
  }

  features {
    nesting = true
  }
}