output "srv_name" {
  value = ["${vsphere_virtual_machine.srv.*.name}"]
}

output "srv_ip" {
  value = ["${vsphere_virtual_machine.srv.*.network_interface.0.ipv4_address}"]
}
