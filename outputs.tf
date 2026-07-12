output "cosmosdb_cassandra_datacenters_id" {
  description = "Map of id values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.id }
}
output "cosmosdb_cassandra_datacenters_availability_zones_enabled" {
  description = "Map of availability_zones_enabled values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.availability_zones_enabled }
}
output "cosmosdb_cassandra_datacenters_backup_storage_customer_key_uri" {
  description = "Map of backup_storage_customer_key_uri values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.backup_storage_customer_key_uri }
}
output "cosmosdb_cassandra_datacenters_base64_encoded_yaml_fragment" {
  description = "Map of base64_encoded_yaml_fragment values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.base64_encoded_yaml_fragment }
}
output "cosmosdb_cassandra_datacenters_cassandra_cluster_id" {
  description = "Map of cassandra_cluster_id values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.cassandra_cluster_id }
}
output "cosmosdb_cassandra_datacenters_delegated_management_subnet_id" {
  description = "Map of delegated_management_subnet_id values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.delegated_management_subnet_id }
}
output "cosmosdb_cassandra_datacenters_disk_count" {
  description = "Map of disk_count values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.disk_count }
}
output "cosmosdb_cassandra_datacenters_disk_sku" {
  description = "Map of disk_sku values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.disk_sku }
}
output "cosmosdb_cassandra_datacenters_location" {
  description = "Map of location values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.location }
}
output "cosmosdb_cassandra_datacenters_managed_disk_customer_key_uri" {
  description = "Map of managed_disk_customer_key_uri values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.managed_disk_customer_key_uri }
}
output "cosmosdb_cassandra_datacenters_name" {
  description = "Map of name values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.name }
}
output "cosmosdb_cassandra_datacenters_node_count" {
  description = "Map of node_count values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.node_count }
}
output "cosmosdb_cassandra_datacenters_seed_node_ip_addresses" {
  description = "Map of seed_node_ip_addresses values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.seed_node_ip_addresses }
}
output "cosmosdb_cassandra_datacenters_sku_name" {
  description = "Map of sku_name values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.sku_name }
}

