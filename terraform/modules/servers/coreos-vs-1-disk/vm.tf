resource "vsphere_virtual_machine" "srv" {
  datacenter = "${var.datacenter}"
  cluster    = "${var.cluster}"

  count = "${var.srv_number != "none" ? 1 : var.servers}"

  name = "${upper(format("%s%s-%s.%s",
          "${var.srv_branch == "none" ? "" : "${var.srv_branch}-"}",
          var.srv_role, 
          "${var.srv_number == "none" ? format("%02d", count.index + var.srv_first_number) : var.srv_number}",
          var.env))}"

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

    template = "${var.template}"
  }

  custom_configuration_parameters {
    "guestinfo.hostname" = "${lower(format("%s%s-%s",
                           "${var.srv_branch == "none" ? "" : "${var.srv_branch}-"}",
                            var.srv_role,
                            "${var.srv_number == "none" ? format("%02d", count.index + var.srv_first_number) : var.srv_number}"))}"

    "guestinfo.domain"            = "${lower(format(var.dns_domain))}"
    "guestinfo.interface.0.role"  = "public"
    "guestinfo.interface.0.name"  = "ens192"
    "guestinfo.interface.0.dhcp"  = "yes"
    "guestinfo.coreos.config.url" = "${var.cloud_init_url}"
  }
  
  provisioner "remote-exec" {
    script      = "../../scripts/coreos/coreos-update-public-ip.sh"

    connection {
      type     = "ssh"
      user     = "core"
      password = "core1234"
    }
  } 

  skip_customization = "${var.skip_config}"

  lifecycle {
    ignore_changes = ["disk"]
  }
}
