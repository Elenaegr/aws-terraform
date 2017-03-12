provider "bigip" {
  address = "${var.bigip_url}"

  #username = "${var.bigip_user}"
  username   = "sergey"
  password   = "${var.bigip_pass}"
  token_auth = "true"
  login_ref  = "tmos"
}

provider "ultradns" {
  username = "${var.ultradns_user}"
  password = "${var.ultradns_pass}"
  baseurl  = "https://restapi.ultradns.com/"
}

provider "vsphere" {
  user     = "${var.vsphere_user}"
  password = "${var.password}"

  #password       = "${var.vsphere_password}"
  vsphere_server       = "${var.vsphere_server}"
  allow_unverified_ssl = true
}
