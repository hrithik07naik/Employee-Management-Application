terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
    }
  
    
  }
}


provider "azurerm" {
  subscription_id = "d963f3ad-ec41-4ebc-ac0f-aca54afa2e11"
  client_id       = "772adde2-fceb-4780-9e37-4411d5043954"  # new appId
  client_secret   = "FiY8Q~G7gQrbJksGMXQ4oxz-UBmb3opjMNRkccp5"  # new password
  tenant_id       = "5072ca3c-4440-49fd-960e-b3db71882f31"
  features {}
}

    
    #value=TxP8Q~630B3GneU4hqKdXCnwMtu~78-D1k1KYciV
    #secerts=032ef2d7-5ae4-4b31-8804-822b8a6762c7


resource "azurerm_resource_group" "refrg" {
  name = local.Rgname
  location = var.locationname
  
}
resource "azurerm_service_plan" "asp" {
  name = local.localplanname
  location = var.locationname1
  resource_group_name = azurerm_resource_group.refrg.name
  sku_name = var.skuname
  os_type = "Windows"
  depends_on = [ azurerm_resource_group.refrg ]

}
resource "azurerm_windows_web_app" "webapp" {
  name = local.localwebname
  location = var.locationname1
  resource_group_name = azurerm_resource_group.refrg.name
  service_plan_id = azurerm_service_plan.asp.id
  site_config {
    always_on = false
  }
  depends_on = [ azurerm_service_plan.asp ]
  
}
resource "azurerm_mssql_server" "server" {
  name                         = local.localservername
  resource_group_name          = azurerm_resource_group.refrg.name
  location                     = var.locationname
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "thisIsKat11"
  minimum_tls_version          = "1.2"

  depends_on = [ azurerm_resource_group.refrg ]
  
}
resource "azurerm_mssql_database" "database" {
  name         = local.localdatabasename
  server_id    = azurerm_mssql_server.server.id  # Use .id to reference the server's ID
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 1
  sku_name     = var.skuname1
  enclave_type = "VBS"

  depends_on = [azurerm_mssql_server.server]
}

