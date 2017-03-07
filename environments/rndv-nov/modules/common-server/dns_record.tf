resource "powerdns_record" "srv_fqdn" {
  depends_on = ["vsphere_virtual_machine.srv"]
  count      = "${length(vsphere_virtual_machine.srv.*.id)}"
  zone       = "test.com."
  name       = "bla"
  type       = "A"
  ttl        = 600
  records    = ["1.1.1.1"]
}
