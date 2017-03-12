# module "white-ore" {
# 	source = "../../terraform/modules/servers/ore"  # Change it to github
#   servers = "${var.ore_white}"
#   ore_first_number = 1
# 	#depends_on = ["vsphere_folder.env_folder"]  # terrafrom team should develop depends_on for module
#   env = "${var.env}"
#   datacenter = "${var.vsphere_datacenter}"
#   cluster = "${var.vsphere_cluster}"
#   ore_color = "white"
#   #ore_number = "01"
# 	folder = "${vsphere_folder.env_folder.path}"
# 	ore_vcpu = 2
#  	ore_memory = 4096
# 	network = "${var.vsphere_dmz_network}"
#   datastore = "${var.vsphere_datastore}"
#   template = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
# }
# module "white-ore17" {
#   source = "../../terraform/modules/servers/ore"  # Change it to github
#   servers = "${var.ore_white}"
#   ore_first_number = 1
#   #depends_on = ["vsphere_folder.env_folder"]  # terrafrom team should develop depends_on for module
#   env = "${var.env}"
#   datacenter = "${var.vsphere_datacenter}"
#   cluster = "${var.vsphere_cluster}"
#   ore_color = "white"
#   ore_number = "17"
#   folder = "${vsphere_folder.env_folder.path}"
#   ore_vcpu = 8
#   ore_memory = 8192
#   network = "${var.vsphere_dmz_network}"
#   datastore = "${var.vsphere_datastore}"
#   template = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
# }
# module "black-ore" {
#   source = "../../terraform/modules/servers/ore"  # Change it to github
# 	servers = "${var.ore_black}"
#   ore_first_number = 1
# 	#depends_on = ["vsphere_folder.env_folder"]  # terrafrom team should develop depends_on for module
#   env = "${var.env}"
#   datacenter = "${var.vsphere_datacenter}"
#   cluster = "${var.vsphere_cluster}"
#   ore_color = "black"
#   #ore_number = "01"
# 	folder = "${vsphere_folder.env_folder.path}"
# 	ore_vcpu = 2
#  	ore_memory = 4096
# 	network = "${var.vsphere_dmz_network}"
#   datastore = "${var.vsphere_datastore}"
#   template = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
# }
# module "red-ore" {
# 	source = "../../terraform/modules/servers/ore"  # Change it to github 
# 	servers = "${var.ore_red}"
#   ore_first_number = 1
# 	#depends_on = ["vsphere_folder.env_folder"]  # terrafrom team should develop depends_on for module
#   env = "${var.env}"
#   datacenter = "${var.vsphere_datacenter}"
#   cluster = "${var.vsphere_cluster}"
#   ore_color = "red"
#   #ore_number = "01"
# 	folder = "${vsphere_folder.env_folder.path}"
# 	ore_vcpu = 2
#  	ore_memory = 4096
# 	network = "${var.vsphere_dmz_network}"
#   datastore = "${var.vsphere_datastore}"
#   template = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
# }

