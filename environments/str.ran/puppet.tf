resource "powerdns_record" "puppet" {
  zone    = "${var.root_domain}"
  name    = "${format("_x-puppet._tcp.%s.", var.root_domain)}"
  type    = "SRV"
  ttl     = 600
  records = ["0 5 9140 puppet.tuenti.io."]
}

resource "powerdns_record" "puppet-ca" {
  zone    = "${var.root_domain}"
  name    = "${format("_x-puppet-ca._tcp.%s.", var.root_domain)}"
  type    = "SRV"
  ttl     = 600
  records = ["0 5 9141 ca.puppet.tuenti.io."]
}
