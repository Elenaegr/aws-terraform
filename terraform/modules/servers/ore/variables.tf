### Common

variable "env" {}

### Common

### Virtual machine

variable "ore_color" {
	description = "The branch color for the Orejas server"
	default = "none"
}

variable "ore_number" {
	description = "The server serial number. If this variable is set, the module will deploy only 1 server with serial number defined here."
	default = "none"
}

variable "servers" {
	description = "The amount of servers to deploy."
	default = 0
}

variable "ore_first_number" {
	description = "The serial server number to start with when deploying few servers"
	default = 1
}

variable "ore_vcpu" {
	description = "The number of vCpus for the server"
}

variable "ore_memory" {
	description = "The amount of memory for he server"
}

variable "datacenter" {}
variable "folder" {}
variable "cluster" {}
variable "network" {}
variable "template" {}
variable "datastore" {}

### Virtual Machine

### Load Balancer

#variable "partition" {}

#variable "lb_mode" {}

### Load Balancer
