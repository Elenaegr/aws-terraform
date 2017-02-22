resource "vsphere_folder" "auto_ws" {
  
  datacenter = "${var.datacenter}"

  path = ${vmfolder_path}

}
