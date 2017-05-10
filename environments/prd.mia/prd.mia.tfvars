# Common
env = "prd.mia"

# Component machine amounts

scapi_count = 8

lbchat_count = 2

chat_count = 4

db_count = 21

lbint_count = 2

kaf_count = 6

zk_count = 5

fs_count = 3

lbdb_count = 2

rds_count = 3

rbt_count = 3

prometheus_count = 2

alertmgr_count = 2

grafana_count = 2

metricst_count = 4

metricad_count = 4

metricsfe_count = 3

fluentd_count = 0

elasticin_count = 2

elasticcli_count = 2

elasticdata_count = 2

elasticbuffer_count = 2

kubm_count = 3

kubw_count = 3

kubl_count = 2

dev_count = 2

bastion_count = 2

mc_count = 4

batch_count = 2

cron_count = 2

beanstalk_count = 2

lbvoice_count = 2

voicegw_count = 6

lbsip_count = 2

trans_count = 8

sr_count = 2

sensu_count = 2

sentinel_count = 3

proxy_count = 2

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

vsphere_kub_template = ""

vsphere_chat_template = "Debian7_NovChat_Template"

vsphere_datastore = "K2-PROD/K2-PROD-07"

# PowerDNS related

pdns_api_key = "LbNGZykxJ46aSVAu"

pdns_host = "http://mia-pdns01.jajah.dublin:8081"

env_domain = "prd.mia.novumproject.com"

root_domain = "novumproject.com"

# Temporary
username = "iaac-prd-deploy"
