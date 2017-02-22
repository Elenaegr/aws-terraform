resource "vsphere_virtual_machine" "rnd_workstation" {

  depends_on = ["auto_ws"]

  datacenter = "${var.datacenter}"
  cluster = "${var.cluster}"

  count = "${var.ws_number != "none" ? 1 : var.workstations}"

  name   = "${upper(format("%s-%s", var.env, , "${var.ws_number == "none" ? format("%03d", count.index + var.ws_first_number) : var.ws_number}"))}"
  folder = "${vsphere_folder.auto_ws.path}"
  vcpu   = "${var.ws_vcpu}"
  memory = "${var.ws_memory}"

  network_interface {
    label = "${var.network}"
  }

  disk {
    datastore = "${var.datastore}"
    template = "${var.template}"
  }
}