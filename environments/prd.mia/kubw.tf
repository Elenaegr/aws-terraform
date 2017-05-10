resource "vsphere_folder" "kubw_folder" {
  datacenter = "${var.vsphere_datacenter}"

  path = "${format("%s/KUBW", vsphere_folder.env_folder.path)}"
}

module "kubw" {
  source = "../../terraform/modules/servers/coreos-vs-2-disks"

  srv_role         = "kubw"
  servers          = "${var.kubw_count}"
  srv_first_number = 1
  env              = "${var.env}"
  datacenter       = "${var.vsphere_datacenter}"
  cluster          = "${var.vsphere_cluster}"
  dns_domain       = "${var.env_domain}"

  cloud_init_url = "${format("http://bootcfg.tuenti.io/cloud?role=kubenode&cluster=kubernetes-novum.%s", var.env)}"

  #srv_number    = "01"
  env_folder = "${vsphere_folder.kubw_folder.path}"

  srv_vcpu   = 8
  srv_memory = 16051

  second_disk_size = 100

  network     = "${var.vsphere_app_network}"
  datastore   = "${var.vsphere_datastore}"
  template    = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_kub_template)}"
  skip_config = "true"
}
