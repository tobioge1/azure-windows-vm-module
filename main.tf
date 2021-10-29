resource "azurerm_windows_virtual_machine" "this" {
  name                            = "vm-${var.identifier}-${var.environment}"
  resource_group_name             = var.azurerm_resource_group.name
  location                        = var.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  custom_data                     = var.custom_data
  network_interface_ids           = var.azurerm_network_interface_ids

  source_image_reference {
    publisher = var.source_image_reference.publisher
    offer     = var.source_image_reference.offer
    sku       = var.source_image_reference.sku
    version   = var.source_image_reference.version
  }

  os_disk {
    storage_account_type = var.os_disk.storage_account_type
    caching              = var.os_disk.caching

    diff_disk_settings {
      option = var.diff_disk_settings.option
    }
  }

    identity {
        type = var.vm_identity
    }

    tags = var.tags
}