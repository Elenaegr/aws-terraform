resource "powerdns_record" "metricgraphite_vip" {
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${format("metricgraphite-vip.%s.", var.env_domain)}"
  type    = "A"
  ttl     = 600
  records = ["10.230.132.221"]
}

resource "powerdns_record" "metrics_cname" {
  depends_on = ["powerdns_record.metricgraphite_vip"]
  zone       = "${lower(format("%s.", var.env_domain))}"
  name       = "${format("metrics.%s.", var.env_domain)}"
  type       = "CNAME"
  ttl        = 600
  records    = ["${powerdns_record.metricgraphite_vip.name}"]
}

resource "powerdns_record" "source_metrics_cname" {
  depends_on = ["powerdns_record.metricgraphite_vip"]
  zone       = "${lower(format("%s.", var.env_domain))}"
  name       = "${format("source.metrics.%s.", var.env_domain)}"
  type       = "CNAME"
  ttl        = 600
  records    = ["${powerdns_record.metricgraphite_vip.name}"]
}
