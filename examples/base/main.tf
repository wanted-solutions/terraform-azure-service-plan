provider "azurerm" {
  features {}
}

module "azurerm_service_plan" {
  source                       = "../.."
  service_plan_name            = "example-service-plan"
  resource_group_name          = "example-resource-group"
  location                     = "North Europe"
  os_type                      = "Linux"
  sku_name                     = "S1"
  app_service_environment_id   = ""  
  maximum_elastic_worker_count = ""
  worker_count                 = ""
  per_site_scaling_enabled     = false
  zone_balancing_enabled       = false

}