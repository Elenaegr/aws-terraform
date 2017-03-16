resource "vsphere_folder" "imc_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/IMC", vsphere_folder.env_folder.path)}"
}

module "imc" {
  source = "./modules/common-vs-1-disk"

  srv_role = "imc"

  servers          = "${var.imc_count}"
  srv_first_number = 1

  env        = "${var.env}"
  datacenter = "${var.vsphere_datacenter}"
  cluster    = "${var.vsphere_cluster}"

  #srv_branch = "white"
  dns_domain = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.imc_folder.path}"
  srv_vcpu   = 4
  srv_memory = 8192

  #disk_size     = 50
  network     = "${var.vsphere_app_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_cp_template)}"
  skip_config = "true"
}
