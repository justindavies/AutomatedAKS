resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-rbac-resources"
  location = "${var.location}"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "${var.prefix}-rbac"
  location            = "${azurerm_resource_group.example.location}"
  resource_group_name = "${azurerm_resource_group.example.name}"
  dns_prefix          = "${var.prefix}-rbac"

  agent_pool_profile {
    name            = "default"
    count           = 1
    vm_size         = "Standard_D1_v2"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = "${var.SP}"
    client_secret = "${var.PASS}"
  }

  role_based_access_control {
    enabled = true

    azure_active_directory {
      # NOTE: in a Production environment these should be different values
      # but for the purposes of this example, this should be sufficient
      client_app_id = "${var.client_app_id}"
      server_app_id     = "${var.server_app_id}"
      server_app_secret = "${var.server_app_secret}"
      tenant_id = "${var.tenant_id}"
    }
  }

  tags = {
    Environment = "Production"
  }
}

