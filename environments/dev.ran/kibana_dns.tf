resource "powerdns_record" "kibana_vip_a" {
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${lower(format("kibana.%s.", var.env_domain))}"
  type    = "A"
  ttl     = 7200
  records = ["10.230.128.201"]                               # Once F5 is available by terraform it has to be linked to LB VIP address
}
