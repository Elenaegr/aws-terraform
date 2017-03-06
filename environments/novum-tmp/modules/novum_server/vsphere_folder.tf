resource "vsphere_folder" "env_folder" {
  datacenter = "${var.datacenter}"

  path = "${format("%s/%s", var.parent_folder, var.env)}"
}
