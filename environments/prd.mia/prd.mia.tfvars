# Common
env = "prd.mia"

# Component machine amounts

frs_count = 0

imc_count = 0

chat_count = 0 # waiting for image

db_count = 3

lbint_count = 0

kaf_count = 0

zk_count = 0

fs_count = 0

lbdb_count = 0

rds_count = 0

rbt_count = 0

prm_count = 0

alm_count = 0

metricst_count = 0

metricad_count = 0

fluentd_count = 0

elasticin_count = 0

elasticcli_count = 0

elasticdata_count = 0

dev_count = 0

bastion_count = 0

artif_count = 0

mc_count = 0

batch_count = 0

cron_count = 0

artif_count = 0

# VSphere common
#vsphere_user = "${var.username}" It doesnt work :(

#vsphere_password = "${var.password}" It doesnt work :(

vsphere_server = "mia-vcntr.jajah.dublin"

vsphere_root_folder = "PROD/Novum"

vsphere_templates_folder = "Templates/Linux_Templates/Iaac"

# VSphere env related
vsphere_datacenter = "MIA"

vsphere_cluster = "MIA-PROD"

vsphere_network_folder = ""

vsphere_mgmt_network = "VLAN_410_LIVE-MGMT_(10.230.5.0_24)"

vsphere_dmz_network = "VLAN_421_LIVE-DMZ_(10.230.2.0_23)"

vsphere_app_network = "VLAN_431_LIVE-APP_(10.230.0.0_23)"

vsphere_db_network = "VLAN_441_LIVE-DB_(10.230.4.0_24)"

vsphere_common_template = "Debian8_Nov_Template"

vsphere_cp_template = "Debian8_NovFrs_Template"

vsphere_kub_template = ""

vsphere_chat_template = "Debian7_NovChat_Template"

vsphere_datastore = "K2-PROD/K2-PROD-07"

# PowerDNS related

pdns_api_key = "LbNGZykxJ46aSVAu"

pdns_host = "http://mia-pdns01.jajah.dublin:8081"

env_domain = "prd.mia.novumproject.com."

# Temporary
username = "iaac-prd-deploy"
