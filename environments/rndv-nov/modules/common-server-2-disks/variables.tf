### Common

variable "env" {}

### Common

### Virtual machine

variable "srv_role" {
  description = "The hostname abstarction of the server role to be use as part of the hostname."
}

variable "srv_number" {
  description = "The server serial number. If this variable is set, the module will deploy only 1 server with serial number defined here."
  default     = "none"
}

variable "servers" {
  description = "The amount of servers to deploy."
  default     = 0
}

variable "srv_first_number" {
  description = "The serial server number to start with when deploying few servers"
  default     = 1
}

variable "srv_vcpu" {
  description = "The number of vCpus for the server"
}

variable "srv_memory" {
  description = "The amount of memory for he server"
}

variable "skip_config" {
  description = "Skip configuring machinng using Vsphere guest customization tool"
  default     = "false"
}

variable "second_disk_size" {
  description = "Size in GB of the second disk"
}

variable "second_disk_type" {
  description = "The type of the virtual disk"
  default     = "thin"
}

variable "second_disk_clrtype" {
  description = "The type of controller"
  default     = "scsi"
}

variable "datacenter" {}

#variable "parent_folder" {}

variable "env_folder" {}

variable "cluster" {}

variable "network" {}

variable "template" {}

variable "datastore" {}

#variable "disk_size" {}

### Virtual Machine

### PowerDNS
variable "dns_domain" {
  description = "The dns domain the machine should be registered to"
}

### PowerDNS

