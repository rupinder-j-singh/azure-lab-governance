# ============================================================
# Resource Groups
# ============================================================

resource "azurerm_resource_group" "management" {
  name     = "rg-${var.entity}-mgmt-${var.location_code}-${var.environment}-001"
  location = var.location

  tags = merge(var.tags, {
    application = "management"
  })
}