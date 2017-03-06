resource "vsphere_virtual_machine" "srv" {
  depends_on = ["vsphere_folder.env_folder"]

  datacenter = "${var.datacenter}"
  cluster    = "${var.cluster}"

  count = "${var.srv_number != "none" ? 1 : var.servers}"

  name   = "${upper(format("%s-%s%s", var.env, var.srv_role, "${var.srv_number == "none" ? format("%02d", count.index + var.srv_first_number) : var.srv_number}"))}"
  folder = "${vsphere_folder.env_folder.path}"
  vcpu   = "${var.srv_vcpu}"
  memory = "${var.srv_memory}"

  network_interface {
    label = "${var.network}"
  }

  disk {
    datastore = "${var.datastore}"

    #template = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
    template = "${var.template}"
  }

  skip_customization = "${var.skip_config}"
}
