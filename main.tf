resource "azurerm_postgresql_server" "pgs" {
  resource_group_name = "demo"
  location = "eastus"
  name = "demo"
  administrator_login = "postgres"
  administrator_login_password = "india123"
  version = "11"
  storage_mb = "5120"
  auto_grow_enabled = true
  sku_name = "B_Gen5_1"
  backup_retention_days = 7
  geo_redundant_backup_enabled = false
  public_network_access_enabled = false
  ssl_enforcement_enabled = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}
resource "azurerm_postgresql_configuration" "example" {
  name                = "log_connections"
  resource_group_name = "demo"
  server_name         = azurerm_postgresql_server.pgs.name
  value               = "on"
}
resource "azurerm_postgresql_configuration" "example" {
  name                = "connection_throttling"
  resource_group_name = "demo"
  server_name         = azurerm_postgresql_server.pgs.name
  value               = "on"
}
resource "azurerm_postgresql_configuration" "example" {
  name                = "log_checkpoints"
  resource_group_name = "demo"
  server_name         = azurerm_postgresql_server.pgs.name
  value               = "on"
}
