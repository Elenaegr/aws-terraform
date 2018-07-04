resource "powerdns_record" "artifactory_local_a" {
  zone    = "${lower(format("%s.", var.env_domain))}"
  name    = "${lower(format("artifactory.%s.", var.env_domain))}"
  type    = "A"
  ttl     = 7200
  records = ["10.230.128.180"]
}

resource "powerdns_record" "artifactory_geo_cname" {
  depends_on = ["powerdns_record.artifactory_local_a"]
  zone       = "${lower(format("geo.%s.", var.root_domain))}"
  name       = "${lower(format("artifactory.geo.%s.", var.root_domain))}"
  type       = "CNAME"
  ttl        = 7200
  records    = ["${powerdns_record.artifactory_local_a.name}"]
}

resource "powerdns_record" "artifactory_global_cname" {
  depends_on = ["powerdns_record.artifactory_geo_cname"]
  zone       = "${lower(format("%s.", var.root_domain))}"
  name       = "${lower(format("artifactory.%s.", var.root_domain))}"
  type       = "CNAME"
  ttl        = 7200
  records    = ["${powerdns_record.artifactory_geo_cname.name}"]
}

resource "powerdns_record" "artifactory_global_wild_cname" {
  depends_on = ["powerdns_record.artifactory_geo_cname"]
  zone       = "${lower(format("%s.", var.root_domain))}"
  name       = "${lower(format("*.artifactory.%s.", var.root_domain))}"
  type       = "CNAME"
  ttl        = 7200
  records    = ["${powerdns_record.artifactory_geo_cname.name}"]
}
