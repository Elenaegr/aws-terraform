resource "powerdns_record" "k8s_svc" {
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${format("svc.k8s.%s.", var.env_domain)}"
  type    = "A"
  ttl     = 600
  records = ["10.230.0.154"]
}

resource "powerdns_record" "k8s_svc_wildcard" {
  depends_on = ["powerdns_record.k8s_svc"]
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${format("*.svc.k8s.%s.", var.env_domain)}"
  type    = "CNAME"
  ttl     = 600
  records = ["${powerdns_record.k8s_svc.name}"]
}
