### Common

variable "env" {}

### Common

### Virtual machine

variable "ws_number" {
	description = "The workstation serial number. If this variable is set, the module will deploy only 1 workstation with serial number defined here."
	default = "none"
}

variable "workstations" {
	description = "The amount of workstations to deploy."
	default = 0
}

variable "ws_first_number" {
	description = "The serial server number to start with when deploying few servers"
	default = 1
}

variable "ws_vcpu" {
	description = "The number of vCpus for the server"
}

variable "ws_memory" {
	description = "The amount of memory for he server"
}

variable "datacenter" {}
variable "cluster" {}
variable "network" {}
variable "template" {}
variable "datastore" {}
variable "vmfolder_path" {}

