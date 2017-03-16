resource "vsphere_folder" "frs_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/FRS", vsphere_folder.env_folder.path)}"
}

module "frs" {
  source = "./modules/common-vs-1-disk"

  srv_role         = "frs"
  servers          = "${var.frs_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.frs_folder.path}"

  srv_vcpu   = 4
  srv_memory = 8192

  #second_disk_size = 40

  network     = "${var.vsphere_app_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_cp_template)}"
  skip_config = "true"
}
