resource "vsphere_folder" "proxy_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/PROXY", vsphere_folder.env_folder.path)}"
}

module "proxy" {
  source = "../../terraform/modules/servers/common-vs-1-disk"

  srv_role         = "proxy"
  servers          = "${var.proxy_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.proxy_folder.path}"

  srv_vcpu   = 2
  srv_memory = 2048

  #second_disk_size = 100

  network     = "${var.vsphere_mgmt_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_common_template)}"
  skip_config = "true"
}
