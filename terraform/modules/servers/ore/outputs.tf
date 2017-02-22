output "ore_node_name" {
	value = ["${vsphere_virtual_machine.ore.*.name}"]
}

output "ore_node_ip" {
	value = ["${vsphere_virtual_machine.ore.*.network_interface.0.ip_address}"]
}