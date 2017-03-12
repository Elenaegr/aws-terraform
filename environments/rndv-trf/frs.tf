variable frs_srvs {
  type = "map"

  default {
    frs-01 = "1.1.1.1"
    frs-01 = "2.2.2.2"
  }
}

resource "bigip_ltm_node" "node" {
  count   = 2
  name    = "${format("/%s/%s", var.bigip_partition, element(keys(var.frs_srvs), count.index))}"
  address = "${lookup(var.frs_srvs, element(keys(var.frs_srvs), count.index))}"
}
