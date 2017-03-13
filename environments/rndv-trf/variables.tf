# Common
variable env {}

# Component machine amounts

# ore
variable ore_white {
  default = 0
}

variable ore_black {
  default = 0
}

variable ore_red {
  default = 0
}

# cor

# man

# VSphere common
variable vsphere_datacenter {}

variable vsphere_user {}
variable vsphere_password {}
variable vsphere_server {}
variable vsphere_templates_folder {}

# VSphere env related
variable vsphere_cluster {}

variable vsphere_root_folder {}
variable vsphere_dmz_network {}
variable vsphere_app_network {}
variable vsphere_db_network {}
variable vsphere_linux_template {}
variable vsphere_datastore {}

# Bigip common
variable bigip_url {}

#variable bigip_user {}
#variable bigip_pass {}
variable bigip_branch {}
variable bigip_partition {}

# UltraDNS common
variable ultradns_user {}

variable ultradns_pass {}

# Temporary
variable password {}
