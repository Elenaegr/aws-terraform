resource "vsphere_virtual_machine" "srv" {
  datacenter = "${var.datacenter}"
  cluster    = "${var.cluster}"

  count = "${var.srv_number != "none" ? 1 : var.servers}"

  name = "${upper(format("%s%s-%s.%s",
          "${var.srv_branch == "none" ? "" : "${var.srv_branch}-"}",
          var.srv_role, 
          "${var.srv_number == "none" ? format("%02d", count.index + var.srv_first_number) : var.srv_number}",
          var.env))}"

  #name = "${upper(format("%s-%s%s", var.env, var.srv_role, "${var.srv_number == "none" ? format("%02d", count.index + var.srv_first_number) : var.srv_number}"))}"

  folder = "${var.env_folder}"
  vcpu   = "${var.srv_vcpu}"
  memory = "${var.srv_memory}"
  network_interface {
    label = "${var.network}"
  }
  disk {
    datastore = "${var.datastore}"
    bootable  = "true"
    type      = "${var.disk_type}"

    #template = "${format("%s/%s", var.vsphere_templates_folder, var.vsphere_linux_template)}"
    template = "${var.template}"
  }
  custom_configuration_parameters {
    "guestinfo.hostname" = "${lower(format("%s%s-%s",
                           "${var.srv_branch == "none" ? "" : "${var.srv_branch}-"}",
                            var.srv_role,
                            "${var.srv_number == "none" ? format("%02d", count.index + var.srv_first_number) : var.srv_number}"))}"

    "guestinfo.domain" = "${lower(format(var.dns_domain))}"
  }
  skip_customization = "${var.skip_config}"
}
