module "imc" {
  source = "./modules/common-server"

  srv_role = "imc"

  servers          = "${var.imc_count}"
  srv_first_number = 1

  env        = "${var.env}"
  datacenter = "${var.vsphere_datacenter}"
  cluster    = "${var.vsphere_cluster}"

  dns_domain = "${var.env_domain}"

  #srv_number    = "01"
  parent_folder = "${var.vsphere_root_folder}"
  srv_vcpu      = 4
  srv_memory    = 8192

  #disk_size     = 50
  network     = "${var.vsphere_app_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
  skip_config = "true"
}
