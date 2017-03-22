resource "powerdns_record" "puppet" {
  zone    = "${var.env_domain}"
  name    = "${format("_x-puppet._tcp.%s", var.env_domain)}"
  type    = "SRV"
  ttl     = 600
  records = ["0 5 9140 puppet.tuenti.io."]
}

resource "powerdns_record" "puppet-ca" {
  zone    = "${var.env_domain}"
  name    = "${format("_x-puppet-ca._tcp.%s", var.env_domain)}"
  type    = "SRV"
  ttl     = 600
  records = ["0 5 9141 puppet.tuenti.io."]
}
