# Variables from this Modules
variable "aks_cluster_name" {}
variable "dns_prefix" {}
variable "k8s_version" {}
variable "admin_username" {}
variable "admin_public_ssh_key" {}
variable "agent_pool_name" {}
variable "agents_count" {}
variable "agents_size" {}
variable "service_principal_client_id" {}
variable "service_principal_client_secret" {}
variable "tags" {
  type ="map"
}



# Variabled from Different Modules
variable "location" {}
variable "resource_group_name" {}
variable "vnet_agent_subnet_id" {}
