module "ws_901_905" {

	source = "../../terraform/modules/workstations/rnd"

  workstations = 5
  ws_first_number = 901
  
  env = "${var.env}"
  datacenter = "${var.vsphere_datacenter}"
  cluster = "${var.vsphere_cluster}"
  	
  #ws_number = "01"
	
	folder = "${vsphere_folder.env_folder.path}"

	ore_vcpu = 2
 	ore_memory = 2048
	
	network = "${var.vsphere_rnd_users_network}"
  	
  datastore = "${var.vsphere_datastore}"
  template = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"

}