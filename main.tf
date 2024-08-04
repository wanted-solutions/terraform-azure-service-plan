// Your main module resource goes here
resource "azurerm_service_plan" "this" {
  name                = var.service_plan_name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  os_type             = var.os_type
  sku_name            = var.sku_name

  app_service_environment_id   = var.app_service_environment_id != "" ? var.app_service_environment_id : null
  maximum_elastic_worker_count = var.maximum_elastic_worker_count != "" ? var.maximum_elastic_worker_count : null
  worker_count                 = var.worker_count != "" ? var.worker_count : null
  per_site_scaling_enabled     = var.per_site_scaling_enabled != "" ? var.per_site_scaling_enabled : null
  zone_balancing_enabled       = var.zone_balancing_enabled != "" ? var.zone_balancing_enabled : null

  tags = local.tags
}