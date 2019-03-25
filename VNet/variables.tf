# Variables from this Modules
variable "vnet_name" {}
variable "location" {}
variable "vnet_address_space" {}

# Variables from Different Modules
variable "resource_group_name" {}
variable "tags" {
    type = "map"
}
