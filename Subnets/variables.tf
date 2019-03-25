# Variables from this Modules
variable "subnet_names" {
  type      = "list"
  default   = []
}

variable "subnet_prefixes" {
  type = "list"
  default = []
}


# Variables from different Modules
variable "vnet_name" {}
variable "resource_group_name" {}

