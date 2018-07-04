# Common
variable env {}

# Components

# VSphere common
variable vsphere_datacenter {}

#variable vsphere_user {}

#variable vsphere_password {}

variable vsphere_server {}

variable vsphere_templates_folder {}

# VSphere env related
variable vsphere_cluster {}

variable vsphere_root_folder {}

variable vsphere_mgmt_network {}

variable vsphere_dmz_network {}

variable vsphere_app_network {}

variable vsphere_db_network {}

variable vsphere_common_template {
  description = "Common used template"
}

variable vsphere_kub_template {
  description = "Kubernetes template"
}

variable vsphere_chat_template {
  description = "Chat server template"
}

variable vsphere_datastore {}

# PowerDNS related
variable pdns_api_key {}

variable pdns_host {}

variable env_domain {}

variable root_domain {}

# Temporary
variable username {}

variable password {}
