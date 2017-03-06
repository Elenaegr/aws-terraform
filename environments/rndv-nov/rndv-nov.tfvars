# Common
env = "RNDV-NOV"

# Component machine amounts

frs_count = 2

imc_count = 2

# VSphere common
vsphere_user = "jajah\\sergey"

vsphere_password = "${var.password}"

vsphere_server = "jjvcntr1.jajah.dublin"

vsphere_root_folder = "OPS/OPS-Autotests"

vsphere_templates_folder = "Templates"

# VSphere env related
vsphere_datacenter = "RAN"

vsphere_cluster = "R&D"

vsphere_network_folder = "RAN"

vsphere_dmz_network = "******"

vsphere_app_network = "USR-DEV_172.16.22"

vsphere_db_network = "*************"

vsphere_linux_template = "RAN-TEMP-FRS-DEB8.6"

vsphere_datastore = "3P82-PROD/3P82-01"

# PowerDNS related

pdns_api_key = "********"

pdns_host = "pdns01.novum.int"
