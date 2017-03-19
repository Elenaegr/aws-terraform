resource "vsphere_folder" "metricad_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/METRICAD", vsphere_folder.env_folder.path)}"
}

module "metricad" {
  source = "../../terraform/modules/servers/common-vs-1-disk"

  srv_role         = "metricad"
  servers          = "${var.metricad_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.metricad_folder.path}"

  srv_vcpu   = 1
  srv_memory = 2048

  #second_disk_size = 100

  network     = "${var.vsphere_mgmt_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_common_template)}"
  skip_config = "true"
}
