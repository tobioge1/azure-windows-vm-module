variable "location" {
  type = string
  default = "eastus2"
}

variable "azurerm_resource_group" {
    type = map(string)
    default = {
      "name" = ""
    }
}

variable "vm_size" {
  type = string
  default = "Standard_F2"
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
  sensitive   = true
}

variable "azurerm_network_interface_ids" {
  type = list(string)
}

variable "os_disk" {
  type = map(string)
  default =  {
    "caching" = "ReadWrite",
    "storage_account_type" = "Standard_LRS"
  }
}

variable "diff_disk_settings" {
  type = map(string)
  description = "ephemeral os disk"
  default =  {
    "option" = "Local"
  }
}

variable "custom_data" {
    type = string
}

variable "vm_identity" {
    type = string
    default = "SystemAssigned"
}


variable "source_image_reference" {
    type = map(string)
    default = {
        "publisher" = "MicrosoftWindowsServer"
        "offer"     = "WindowsServer"
        "sku"       = "2016-Datacenter"
        "version"   = "latest"
    }
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}


variable "tags" {
  type = map(string)
  default = {
    "created_By"  = "terraform"
    "deployed_By" = "terraform"
    "product"     = ""
    "shared"      = ""
    "project"     = ""
  }
} 
