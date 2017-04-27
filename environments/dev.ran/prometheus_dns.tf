resource "powerdns_record" "prometheus_k8s" {
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${format("prometheus.k8s.%s.", var.env_domain)}"
  type    = "CNAME"
  ttl     = 600
  records = ["${format("kubworker.%s.", var.env_domain)}"]
}
