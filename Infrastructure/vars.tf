variable "SP" {
      default = "foo"
}
variable "PASS" {
      default = "foo"
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "test"

}

variable "location" {
  description = "The Azure Region in which all resources in this example should be provisioned"
  default = "eastus"

}

variable "client_app_id" {
  description = "The Client ID for the Service Principal to use for this Managed Kubernetes Cluster for RBAC"
  default = "foo"

}

variable "server_app_id" {
  description = "The Server ID for the Service Principal to use for this Managed Kubernetes Cluster for RBAC"
  default = "foo"
}

variable "server_app_secret" {
  description = "The Server Secret for the Service Principal to use for this Managed Kubernetes Cluster for RBAC"
  default = "foo"
}

variable "tenant_id" {
  description = "The Tenant to use for this Managed Kubernetes Cluster for RBAC"
  default = "foo"
}
