# homelab

## Manual steps

---

### Step 10: Configure Proxmox PVE host(s)

The particular privileges required may change but here is a suitable starting point rather than using cluster-wide Administrator rights.

1. Log into the Proxmox cluster or host using ssh (or mimic these in the GUI).

2. Create a new role for the future Terraform user:

        pveum role add Tf -privs "Datastore.AllocateSpace Datastore.AllocateTemplate Datastore.Audit Pool.Allocate Sys.Audit Sys.Console Sys.Modify VM.Allocate VM.Audit VM.Clone VM.Config.CDROM VM.Config.Cloudinit VM.Config.CPU VM.Config.Disk VM.Config.HWType VM.Config.Memory VM.Config.Network VM.Config.Options VM.Migrate VM.Monitor VM.PowerMgmt SDN.Use"

3. Create the user "tf@pve" and add an API token:

        pveum user add tf@pve --password <password>

4. Add the Tf role to the user:

        pveum aclmod / -user tf@pve -role Tf

### Step 11: Create LXC containers using Terraform

Run `main.tf`.