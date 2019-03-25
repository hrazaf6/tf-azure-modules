# Variables from this Modules

variable "storage_account_name" {}
variable "location" {}
variable "account_tier" {}
variable "account_replication_type" {}
variable "tags" {
  type = "map"
}

# Variables from Different Modules

variable "resource_group_name" {}
