resource "vsphere_folder" "fpx_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/FPX", vsphere_folder.env_folder.path)}"
}

module "fpx" {
  source = "../../terraform/modules/servers/common-vs-1-disk"

  srv_role         = "fpx"
  servers          = "${var.fpx_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.fpx_folder.path}"

  srv_vcpu   = 2
  srv_memory = 4096

  #second_disk_size = 100

  network     = "${var.vsphere_dmz_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_common_template)}"
  skip_config = "true"
}
