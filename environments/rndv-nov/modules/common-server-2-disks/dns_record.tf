resource "powerdns_record" "a" {
  depends_on = ["vsphere_virtual_machine.srv"]

  count   = "${var.srv_number != "none" ? 1 : var.servers}"
  zone    = "${var.dns_domain}"
  name    = "${lower(format("%s.%s", element(vsphere_virtual_machine.srv.*.name, count.index), var.dns_domain))}"
  type    = "A"
  ttl     = 600
  records = ["${element(vsphere_virtual_machine.srv.*.network_interface.0.ipv4_address, count.index)}"]
}

resource "powerdns_record" "ptr" {
  depends_on = ["vsphere_virtual_machine.srv"]

  count = "${var.srv_number != "none" ? 1 : var.servers}"

  zone = "${format("%s.%s.in-addr.arpa.", 
                    element(split(".", element(vsphere_virtual_machine.srv.*.network_interface.0.ipv4_address, count.index)), 1), 
                    element(split(".", element(vsphere_virtual_machine.srv.*.network_interface.0.ipv4_address, count.index)), 0) )}"

  name = "${format("%s.%s.%s.%s.in-addr.arpa.", 
                  element(split(".", element(vsphere_virtual_machine.srv.*.network_interface.0.ipv4_address, count.index)), 3),  
                  element(split(".", element(vsphere_virtual_machine.srv.*.network_interface.0.ipv4_address, count.index)), 2),
                  element(split(".", element(vsphere_virtual_machine.srv.*.network_interface.0.ipv4_address, count.index)), 1),
                  element(split(".", element(vsphere_virtual_machine.srv.*.network_interface.0.ipv4_address, count.index)), 0) )}"

  type    = "PTR"
  ttl     = 600
  records = ["${lower(format("%s.%s", element(vsphere_virtual_machine.srv.*.name, count.index), var.dns_domain))}"]
}
