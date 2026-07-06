output "cosmosdb_cassandra_datacenters" {
  description = "All cosmosdb_cassandra_datacenter resources"
  value       = azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters
}
output "cosmosdb_cassandra_datacenters_availability_zones_enabled" {
  description = "List of availability_zones_enabled values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.availability_zones_enabled]
}
output "cosmosdb_cassandra_datacenters_backup_storage_customer_key_uri" {
  description = "List of backup_storage_customer_key_uri values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.backup_storage_customer_key_uri]
}
output "cosmosdb_cassandra_datacenters_base64_encoded_yaml_fragment" {
  description = "List of base64_encoded_yaml_fragment values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.base64_encoded_yaml_fragment]
}
output "cosmosdb_cassandra_datacenters_cassandra_cluster_id" {
  description = "List of cassandra_cluster_id values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.cassandra_cluster_id]
}
output "cosmosdb_cassandra_datacenters_delegated_management_subnet_id" {
  description = "List of delegated_management_subnet_id values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.delegated_management_subnet_id]
}
output "cosmosdb_cassandra_datacenters_disk_count" {
  description = "List of disk_count values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.disk_count]
}
output "cosmosdb_cassandra_datacenters_disk_sku" {
  description = "List of disk_sku values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.disk_sku]
}
output "cosmosdb_cassandra_datacenters_location" {
  description = "List of location values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.location]
}
output "cosmosdb_cassandra_datacenters_managed_disk_customer_key_uri" {
  description = "List of managed_disk_customer_key_uri values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.managed_disk_customer_key_uri]
}
output "cosmosdb_cassandra_datacenters_name" {
  description = "List of name values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.name]
}
output "cosmosdb_cassandra_datacenters_node_count" {
  description = "List of node_count values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.node_count]
}
output "cosmosdb_cassandra_datacenters_seed_node_ip_addresses" {
  description = "List of seed_node_ip_addresses values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.seed_node_ip_addresses]
}
output "cosmosdb_cassandra_datacenters_sku_name" {
  description = "List of sku_name values across all cosmosdb_cassandra_datacenters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : v.sku_name]
}

