output "workstation_name" {
  value = ["${vsphere_virtual_machine.rnd_workstaition.*.name}"]
}
