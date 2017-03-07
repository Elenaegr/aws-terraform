resource "powerdns_record" "srv_fqdn" {
  depends_on = ["vsphere_virtual_machine.srv"]
  count      = "${length(vsphere_virtual_machine.srv.*.id)}"
  zone       = "test.com."
  name       = "bla"
  type       = "A"
  ttl        = 600
  records    = ["1.1.1.1"]
}

#resource "powerdns_record" "srv_fqdn" {
#  depends_on = ["vsphere_virtual_machine.srv"]
#  count      = 1 #"${length(vsphere_virtual_machine.srv)}"
#  zone       = "${var.dns_domain}"
# name       = "${format("%s.%s", vsphere_virtual_machine.srv[count.index].name, var.dns_domain)}"
#type       = "A"
#ttl        = 600
#records    = ["${vsphere_virtual_machine.srv[count.index].network_interface.0.ipv4_address}"]
#}

