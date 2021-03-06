# Common
env = "dev.ran"

# Component machine amounts

scapi_count = 3

lbchat_count = 2

chat_count = 2

db_count = 3

kaf_count = 3

zk_count = 3

fs_count = 2

tel_count = 0

lbdb_count = 2

rds_count = 3

rbt_count = 3

prometheus_count = 2

alertmgr_count = 2

grafana_count = 2

metricst_count = 4

metricad_count = 4

fluentd_count = 2

elasticin_count = 2

elasticcli_count = 2

elasticdata_count = 2

elasticbuffer_count = 2

dev_count = 2

bastion_count = 2

fpx_count = 2

metricsfe_count = 2

mc_count = 2

beanstalk_count = 2

lbvoice_count = 2

voicegw_count = 2

lbsip_count = 2

trans_count = 2

sr_count = 2

sensu_count = 2

sentinel_count = 3

proxy_count = 2

lbint_count = 2

# VSphere common
#vsphere_user = "${var.username}" It doesnt work :(

#vsphere_password = "${var.password}" It doesnt work :(

vsphere_server = "jjvcntr1.jajah.dublin"

vsphere_root_folder = "DEV/Novum"

vsphere_templates_folder = "Templates/Linux_Templates/Iaac"

# VSphere env related
vsphere_datacenter = "RAN"

vsphere_cluster = "R&D"

vsphere_network_folder = "RAN"

vsphere_mgmt_network = "VLAN_810_RNDV-MGMT_(10.230.128.0_24)"

vsphere_dmz_network = "VLAN_821_RNDV-DMZ_(10.230.130.0_23)"

vsphere_app_network = "VLAN_831_RNDV-APP_(10.230.132.0_23)"

vsphere_db_network = "VLAN_841_RNDV-DB_(10.230.134.0_24)"

vsphere_common_template = "Debian8_Nov_Template"

vsphere_kub_template = ""

vsphere_chat_template = "Debian7_NovChat_Template"

vsphere_datastore = "3P82-PROD/3P82-01"

# PowerDNS related

pdns_api_key = "api1234"

pdns_host = "http://ran-pdns01.jajah.dublin:8081"

env_domain = "dev.ran.novumproject.com"

root_domain = "novumproject.com"

# Temporary
username = "iaac-dev-deploy"
