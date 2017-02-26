resource "vsphere_folder" "auto_ws" {
  datacenter = "${var.datacenter}"

  path = "${var.vmfolder_path}"
}
