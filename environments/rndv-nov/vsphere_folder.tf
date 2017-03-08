resource "vsphere_folder" "env_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/%s", var.vsphere_root_folder, var.env)}"
}
