module "test_srv" {
  source = "./modules/novum_server"

  srv_role = "frs"

  servers          = 5
  srv_first_number = 71

  env        = "${var.env}"
  datacenter = "${var.vsphere_datacenter}"
  cluster    = "${var.vsphere_cluster}"

  #srv_number    = "01"
  parent_folder = "${var.vsphere_root_folder}"
  srv_vcpu      = 2
  srv_memory    = 2048
  network       = "${var.vsphere_app_network}"
  datastore     = "${var.vsphere_datastore}"
  template      = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
  skip_config   = "true"
}
