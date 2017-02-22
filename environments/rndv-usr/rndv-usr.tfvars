# Common
env = "RNDV-TRF"

# Component machine amounts

# ore
ore_white = 0
ore_black = 0
ore_red = 0

# cor


# man

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
vsphere_dmz_network = "DMZ_172.16.1"
vsphere_app_network = "RAN/VCAC_172.16.18/19"
vsphere_db_network = "RAN/SRV-DEV-DB_172.16.5"
vsphere_linux_template = "AUTO_LINUX_CENTOS7"
vsphere_datastore = "3P82-PROD/3P82-01"

# Bigip common
bigip_url = "https://ran-bigip01"
bigip_user = "sergey"
bigip_pass = "${var.password}"
bigip_branch = "${var.env}"

# UltraDNS common
ultradns_user = "sizgiyaev"
ultradns_pass = "fakeone"
