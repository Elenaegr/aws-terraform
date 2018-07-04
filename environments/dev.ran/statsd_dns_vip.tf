resource "powerdns_record" "metricstatsd_vip" {
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${format("metricstatsd-vip.%s.", var.env_domain)}"
  type    = "A"
  ttl     = 600
  records = ["10.230.132.222"]
}
