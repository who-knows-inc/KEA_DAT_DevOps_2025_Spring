variable "vm_ssh_password" {
  description = "The password for the SSH user"
  type        = string
  sensitive   = true
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
  default     = "main-vm"
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_B4ms"
}