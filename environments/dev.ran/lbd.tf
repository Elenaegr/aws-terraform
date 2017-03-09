resource "vsphere_folder" "lbd_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/LBD", vsphere_folder.env_folder.path)}"
}

module "lbd" {
  source = "./modules/common-server-1-disk"

  srv_role         = "lbd"
  servers          = "${var.lbd_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.lbd_folder.path}"

  srv_vcpu   = 4
  srv_memory = 8192

  #second_disk_size = 100

  network     = "${var.vsphere_db_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_common_template)}"
  skip_config = "true"
}
