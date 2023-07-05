
variable "location" {
  type        = string
  default     = "eastus"
  description = "desired locations for resources"
}
variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "The storage Account tier"
}
variable "tags" {
  type        = map(map(string))
  description = "A map of tags to apply to the storage account"
}
variable "account_replication_type" {
  type        = string
  default     = "LRS"
  description = "The replication type of the storage account"
}
variable "container_name" {
  type        = string
  default     = "tfstate"
  description = "name of containers"
}
variable "container_access_type" {
  type        = string
  default     = "blob"
  description = "Desired Container access type"
}
variable "enable_pe" {
  type        = bool
  default     = false
  description = "true / false value to enable or disable private endpoint"
}
variable "subnet_id" {
  type        = string
  default     = ""
  description = "subnet id for private endpoint"
}

variable "ip_ranges" {
  type        = list(string)
  description = "subnet id for private endpoint"
}
