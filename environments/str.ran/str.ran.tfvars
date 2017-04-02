# Common
env = "str.ran"

# Component machine amounts

frs_count = 5

imc_count = 4

lbchat_count = 2

chat_count = 2

db_count = 3

kaf_count = 3

zk_count = 3

fs_count = 2

tel_count = 0

lbdb_count = 2

rds_count = 3

rbt_count = 2

prm_count = 2

alm_count = 2

metricst_count = 4

metricad_count = 2

fluentd_count = 2

elasticin_count = 2

elasticcli_count = 2

elasticdata_count = 2

dev_count = 0

bastion_count = 0

fpx_count = 2

metricsfe_count = 0

vertica_count = 5

hadoopcm_count = 1

hadoopnn_count = 2

hadoopdn_count = 2

kubm_count = 1

# VSphere common
#vsphere_user = "${var.username}" It doesnt work :(

#vsphere_password = "${var.password}" It doesnt work :(

vsphere_server = "jjvcntr1.jajah.dublin"

vsphere_root_folder = "DEV/Novum"

vsphere_templates_folder = "Templates/Linux_Templates/Iaac"

# VSphere env related
vsphere_datacenter = "RAN"

vsphere_cluster = "STRESS"

vsphere_network_folder = "RAN"

vsphere_mgmt_network = "VLAN_710_RNSR-MGMT_(10.230.160.0_24)"

vsphere_dmz_network = "VLAN_721_RNSR-DMZ_(10.230.162.0_23)"

vsphere_app_network = "VLAN_731_RNSR-APP_(10.230.164.0_23)"

vsphere_db_network = "VLAN_741_RNSR-DB_(10.230.166.0_24)"

vsphere_common_template = "Debian8_Nov_Template"

vsphere_kub_template = "CoreOS_Template"

vsphere_chat_template = "Debian7_NovChat_Template"

vsphere_datastore = "3P82-STRESS/3P82-STR-01"

# PowerDNS related

pdns_api_key = "api1234"

pdns_host = "http://ran-pdns01.jajah.dublin:8081"

env_domain = "str.ran.novumproject.com"

root_domain = "novumproject.com"

# Temporary
username = "iaac-dev-deploy"
