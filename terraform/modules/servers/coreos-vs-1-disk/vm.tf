# Systemd unit for cloud-init first run
data "ignition_systemd_unit" "cloudinit_unit" {
  name = "cloudinit.service"

  #content = "${format("[Service]\nType=oneshot\nExecStart=coreos-cloudinit --from-url %s", var.cloud_init_url)}"
  content = "[Service]\nType=oneshot\nExecStart=coreos-cloudinit --from-vmware-guestinfo"
}

data "ignition_config" "cloudinit_config" {
  systemd = [
    "${data.ignition_systemd_unit.cloudinit_unit.id}",
  ]
}

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

    "guestinfo.domain"             = "${lower(format(var.dns_domain))}"
    "guestinfo.interface.0.role"   = "public"
    "guestinfo.interface.0.name"   = "ens192"
    "guestinfo.interface.0.dhcp"   = "yes"
    "guestinfo.coreos.config.url"  = "${var.cloud_init_url}"
    "guestinfo.coreos.config.data" = "${data.ignition_config.cloudinit_config.rendered}"
  }

  skip_customization = "${var.skip_config}"

  # provisioner "remote-exec" {
  #   connection {
  #     type     = "ssh"
  #     user     = "core"
  #     password = "core1234"
  #   }


  #   inline = "sudo coreos-cloudinit --from-url `/usr/share/oem/bin/vmtoolsd --cmd \"info-getguestinfo.coreos.config.url\"`"
  # }

  lifecycle {
    ignore_changes = ["disk"]
  }
}
