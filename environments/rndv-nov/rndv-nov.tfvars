# Common
env = "RNDV-NOV"

# Component machine amounts

frs_count = 1

imc_count = 1

# VSphere common
vsphere_user = "jajah\\sergey"

vsphere_password = "${var.password}"

vsphere_server = "jjvcntr1.jajah.dublin"

vsphere_root_folder = "OPS/OPS-Autotests"

vsphere_templates_folder = "Templates/Linux_Templates"

# VSphere env related
vsphere_datacenter = "RAN"

vsphere_cluster = "R&D"

vsphere_network_folder = "RAN"

vsphere_dmz_network = "VLAN_821_RNDV-DMZ_(10.230.130.0_23)"

vsphere_app_network = "VLAN_831_RNDV-APP_(10.230.132.0_23)"

vsphere_db_network = "VLAN_841_RNDV-DB_(10.230.134.0_24)"

vsphere_linux_template = "Debian8_Nov_Template"

vsphere_datastore = "3P82-PROD/3P82-01"

# PowerDNS related

pdns_api_key = "api1234"

pdns_host = "http://ran-pdns01.jajah.dublin:8081"

env_domain = "dev.novumproject.com."
