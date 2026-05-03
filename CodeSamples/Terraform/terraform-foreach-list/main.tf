variable "the_mishras_family" {}

resource "azurerm_resource_group" "rg" {
  for_each = toset(var.the_mishras_family)
  name     = each.key
  location = "westus"
}


