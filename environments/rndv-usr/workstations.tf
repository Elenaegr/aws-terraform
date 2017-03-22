module "ws_centos_901_902" {
  source = "../../terraform/modules/workstations/rnd"

  workstations    = 2
  ws_first_number = 901

  env        = "${var.env}"
  datacenter = "${var.vsphere_datacenter}"
  cluster    = "${var.vsphere_cluster}"

  #ws_number = "01"

  vmfolder_path = "${var.vsphere_folder}"
  ws_vcpu       = 2
  ws_memory     = 2048
  network       = "${var.vsphere_rnd_users_network}"
  datastore     = "${var.vsphere_datastore}"
  template      = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_centos_template)}"
}