# Common
env = "stg.mia"

# Component machine amounts

scapi_count = 2

lbchat_count = 2

chat_count = 2

db_count = 3

lbint_count = 0

kaf_count = 3

zk_count = 3

fs_count = 2

lbdb_count = 2

rds_count = 3

rbt_count = 2

prm_count = 2

alm_count = 2

metricst_count = 2

metricad_count = 2

metricsfe_count = 0

fluentd_count = 2

elasticin_count = 2

elasticcli_count = 2

elasticdata_count = 2

elasticbuffer_count = 0

dev_count = 0

bastion_count = 0

mc_count = 0

batch_count = 0

cron_count = 0

beanstalk_count = 0

lbvoice_count = 2

voicegw_count = 2

lbsip_count = 2

trans_count = 2

sr_count = 2

# VSphere common
#vsphere_user = "${var.username}" It doesnt work :(

#vsphere_password = "${var.password}" It doesnt work :(

vsphere_server = "mia-vcntr.jajah.dublin"

vsphere_root_folder = "STG/Novum"

vsphere_templates_folder = "Templates/Linux_Templates/Iaac"

# VSphere env related
vsphere_datacenter = "MIA"

vsphere_cluster = "MIA-STG"

vsphere_network_folder = ""

vsphere_mgmt_network = "VLAN_510_MAST-MGMT_(10.230.6.0_24)"

vsphere_dmz_network = "VLAN_521_MAST-DMZ_(10.230.8.0_23)"

vsphere_app_network = "VLAN_531_MAST-APP_(10.230.10.0_23)"

vsphere_db_network = "VLAN_541_MAST-DB_(10.230.12.0_24)"

vsphere_common_template = "Debian8_Nov_Template"

vsphere_kub_template = ""

vsphere_chat_template = "Debian7_NovChat_Template"

vsphere_datastore = "K2-STG/K2-STG-01"

# PowerDNS related

pdns_api_key = "LbNGZykxJ46aSVAu"

pdns_host = "http://mia-pdns01.jajah.dublin:8081"

env_domain = "stg.mia.novumproject.com"

root_domain = "novumproject.com"

# Temporary
username = "iaac-stg-deploy"
