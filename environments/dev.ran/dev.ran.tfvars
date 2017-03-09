# Common
env = "dev.ran"

# Component machine amounts

frs_count = 1

imc_count = 1

db_count = 3

kaf_count = 3

zk_count = 3

fs_count = 2

tel_count = 4

lbd_count = 2

# VSphere common
vsphere_user = "jajah\\sergey"

vsphere_password = "${var.password}"

vsphere_server = "jjvcntr1.jajah.dublin"

vsphere_root_folder = "DEV/Novum"

vsphere_templates_folder = "Templates/Linux_Templates/Iaac"

# VSphere env related
vsphere_datacenter = "RAN"

vsphere_cluster = "R&D"

vsphere_network_folder = "RAN"

vsphere_dmz_network = "VLAN_821_RNDV-DMZ_(10.230.130.0_23)"

vsphere_app_network = "VLAN_831_RNDV-APP_(10.230.132.0_23)"

vsphere_db_network = "VLAN_841_RNDV-DB_(10.230.134.0_24)"

vsphere_common_template = "Debian8_Nov_Template"

vsphere_cp_template = "Debian8_NovFrs_Template"

vsphere_kub_template = ""

vsphere_gbe_template = ""

vsphere_datastore = "3P82-PROD/3P82-01"

# PowerDNS related

pdns_api_key = "api1234"

pdns_host = "http://ran-pdns01.jajah.dublin:8081"

env_domain = "dev.ran.novumproject.com."
