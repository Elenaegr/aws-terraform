resource "vsphere_folder" "prometheus_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/PROMETHEUS", vsphere_folder.env_folder.path)}"
}

module "prometheus" {
  source = "../../terraform/modules/servers/common-vs-2-disks"

  srv_role         = "prometheus"
  servers          = "${var.prometheus_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.prometheus_folder.path}"

  srv_vcpu   = 2
  srv_memory = 4096

  second_disk_size = 100

  network     = "${var.vsphere_mgmt_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_common_template)}"
  skip_config = "true"
}
