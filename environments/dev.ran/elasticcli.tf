resource "vsphere_folder" "elasticcli_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/ELASTICCLI", vsphere_folder.env_folder.path)}"
}

module "elasticcli" {
  source = "./modules/common-vs-1-disk"

  srv_role         = "elasticcli"
  servers          = "${var.elasticcli_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.elasticcli_folder.path}"

  srv_vcpu   = 4
  srv_memory = 8192

  #second_disk_size = 100

  network     = "${var.vsphere_mgmt_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_common_template)}"
  skip_config = "true"
}
