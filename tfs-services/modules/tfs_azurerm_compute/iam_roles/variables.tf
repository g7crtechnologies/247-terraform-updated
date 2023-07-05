variable "azuread_group_name" {
  description = "list of principal id you want to assign"
  type        = list(string)
}
variable "location" {
  description = "location"
  type        = string
}

variable "subcription_scope_enable" {
  description = "to enable the scope to subscription"
  type        = bool
  default     = false
}

variable "scope" {
  description = "scope to assign"
  type        = string
  default     = ""
}
