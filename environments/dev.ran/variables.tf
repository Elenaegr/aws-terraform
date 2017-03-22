# Common
variable env {}

# Components
variable frs_count {}

variable imc_count {}

variable lbchat_count {}

variable chat_count {}

variable db_count {}

variable kaf_count {}

variable zk_count {}

variable fs_count {}

variable tel_count {}

variable lbd_count {}

variable rds_count {}

variable rbt_count {}

variable prm_count {}

variable alm_count {}

variable metricst_count {}

variable metricad_count {}

variable fluentd_count {}

variable elasticin_count {}

variable elasticcli_count {}

variable elasticdata_count {}

variable dev_count {}

variable bastion_count {}

variable artif_count {}

variable fpx_count {}

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

variable vsphere_cp_template {
  description = "Calling platform template"
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

# Temporary
variable username {}

variable password {}