provider "vsphere" {
  user     = "${format("jajah\\%s", var.username)}"
  password = "${var.password}"

  #password       = "${var.vsphere_password}"
  vsphere_server       = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

provider "powerdns" {
  api_key    = "${var.pdns_api_key}"
  server_url = "${var.pdns_host}"
}
