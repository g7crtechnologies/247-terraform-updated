variable "LbRules" {
  description = "List containing your load balancers parameters."
  type        = any
}
variable "product" {
  description  = " Product RG name"
  type         = string
}
variable "location" {
  type        = string
  description = "Location of the load balancer, use the RG's location if not set"
}

variable "lb_name" {
  type        = string
  description = "loadbalancer name"
}

variable "nic_name" {
  type        = list(string)
  description = "nic rg name for existing vm"
}

variable "nic_rg" {
  type        = string
  description = "nic rg name for existing vm"
}
