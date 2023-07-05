variable "lbs" {
  description = "List containing your load balancers."
  type        = any
}

variable "location" {
  description = "Location of the load balancer, use the RG's location if not set"
  type        = any
}

variable "tags" {
  description = "The tags to associate with resources"
  type        = any
}

variable "product" {
  description  = " Product RG name"
  type         = string
}

variable "nic_name" {
  type        = list(string)
  description = "nic rg name for existing vm"
}

variable "nic_rg" {
  type        = string
  description = "nic rg name for existing vm"
}
