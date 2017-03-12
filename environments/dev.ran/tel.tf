resource "vsphere_folder" "tel_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/TEL", vsphere_folder.env_folder.path)}"
}

module "tel" {
  source = "./modules/common-server-1-disk"

  srv_role         = "tel"
  servers          = "${var.tel_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.tel_folder.path}"

  srv_vcpu   = 2
  srv_memory = 4096

  #second_disk_size = 40

  network     = "${var.vsphere_app_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_cp_template)}"
  skip_config = "true"
}
