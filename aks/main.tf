resource "azurerm_kubernetes_cluster" "default" {
  name                = "${var.aks_cluster_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  dns_prefix          = "${var.dns_prefix}"
  kubernetes_version  = "${var.k8s_version}"

  linux_profile {
    admin_username = "${var.admin_username}"

    ssh_key {
      # remove any new lines using the replace interpolation function
      key_data = "${replace(var.admin_public_ssh_key, "\n", "")}"
    }
  }

  agent_pool_profile {
    name            = "${var.agent_pool_name}"
    count           = "${var.agents_count}"
    vm_size         = "${var.agents_size}"
    os_type         = "Linux"
    os_disk_size_gb = 50
    vnet_subnet_id  = "${var.vnet_agent_subnet_id}"
  }

  service_principal {
    client_id     = "${var.service_principal_client_id}"
    client_secret = "${var.service_principal_client_secret}"
  }

  tags = "${var.tags}"
}