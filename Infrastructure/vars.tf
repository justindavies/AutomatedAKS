variable "SP" {
      default = "foo"
}
variable "PASS" {
      default = "foo"
}

variable "PREFIX" {
  description = "A prefix used for all resources in this example"
  default = "test"

}

variable "LOCATION" {
  description = "The Azure Region in which all resources in this example should be provisioned"
  default = "eastus"

}

variable "CLIENTAPPID" {
  description = "The Client ID for the Service Principal to use for this Managed Kubernetes Cluster for RBAC"
  default = "foo"

}

variable "SERVERAPPID" {
  description = "The Server ID for the Service Principal to use for this Managed Kubernetes Cluster for RBAC"
  default = "foo"
}

variable "SERVERAPPSECRET" {
  description = "The Server Secret for the Service Principal to use for this Managed Kubernetes Cluster for RBAC"
  default = "foo"
}

variable "TENANTID" {
  description = "The Tenant to use for this Managed Kubernetes Cluster for RBAC"
  default = "foo"
}
