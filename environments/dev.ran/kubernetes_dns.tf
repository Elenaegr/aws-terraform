resource "powerdns_record" "k8s_svc" {
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${format("svc.k8s.%s.", var.env_domain)}"
  type    = "A"
  ttl     = 600
  records = ["10.230.132.210"]
}

resource "powerdns_record" "k8s_svc_wildcard" {
  depends_on = ["powerdns_record.k8s_svc"]
  zone       = "${lower(format("%s.", var.env_domain))}"
  name       = "${format("*.svc.k8s.%s.", var.env_domain)}"
  type       = "CNAME"
  ttl        = 600
  records    = ["${powerdns_record.k8s_svc.name}"]
}

resource "powerdns_record" "k8s_ingress_wildcard" {
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${format("*.ing.k8s.%s.", var.env_domain)}"
  type    = "CNAME"
  ttl     = 600
  records = ["${format("kubworker.%s.", var.env_domain)}"]
}
