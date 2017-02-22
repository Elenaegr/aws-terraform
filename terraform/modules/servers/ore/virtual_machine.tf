resource "vsphere_virtual_machine" "ore" {

  datacenter = "${var.datacenter}"
  cluster = "${var.cluster}"

  count = "${var.ore_number != "none" ? 1 : var.servers}"

  name   = "${upper(format("%s-%sore%s", var.env, "${var.ore_color != "none" ? "${var.ore_color}-" : ""}", "${var.ore_number == "none" ? format("%02d", count.index + var.ore_first_number) : var.ore_number}"))}"
  folder = "${var.folder}"
  vcpu   = "${var.ore_vcpu}"
  memory = "${var.ore_memory}"

  network_interface {
    label = "${var.network}"
  }

  disk {
    datastore = "${var.datastore}"
    #template = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
    template = "${var.template}"
  }
}