output "cosmosdb_cassandra_datacenters_id" {
  description = "Map of id values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_cassandra_datacenters_availability_zones_enabled" {
  description = "Map of availability_zones_enabled values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.availability_zones_enabled if v.availability_zones_enabled != null }
}
output "cosmosdb_cassandra_datacenters_backup_storage_customer_key_uri" {
  description = "Map of backup_storage_customer_key_uri values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.backup_storage_customer_key_uri if v.backup_storage_customer_key_uri != null && length(v.backup_storage_customer_key_uri) > 0 }
}
output "cosmosdb_cassandra_datacenters_base64_encoded_yaml_fragment" {
  description = "Map of base64_encoded_yaml_fragment values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.base64_encoded_yaml_fragment if v.base64_encoded_yaml_fragment != null && length(v.base64_encoded_yaml_fragment) > 0 }
}
output "cosmosdb_cassandra_datacenters_cassandra_cluster_id" {
  description = "Map of cassandra_cluster_id values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.cassandra_cluster_id if v.cassandra_cluster_id != null && length(v.cassandra_cluster_id) > 0 }
}
output "cosmosdb_cassandra_datacenters_delegated_management_subnet_id" {
  description = "Map of delegated_management_subnet_id values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.delegated_management_subnet_id if v.delegated_management_subnet_id != null && length(v.delegated_management_subnet_id) > 0 }
}
output "cosmosdb_cassandra_datacenters_disk_count" {
  description = "Map of disk_count values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.disk_count if v.disk_count != null }
}
output "cosmosdb_cassandra_datacenters_disk_sku" {
  description = "Map of disk_sku values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.disk_sku if v.disk_sku != null && length(v.disk_sku) > 0 }
}
output "cosmosdb_cassandra_datacenters_location" {
  description = "Map of location values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cosmosdb_cassandra_datacenters_managed_disk_customer_key_uri" {
  description = "Map of managed_disk_customer_key_uri values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.managed_disk_customer_key_uri if v.managed_disk_customer_key_uri != null && length(v.managed_disk_customer_key_uri) > 0 }
}
output "cosmosdb_cassandra_datacenters_name" {
  description = "Map of name values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_cassandra_datacenters_node_count" {
  description = "Map of node_count values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.node_count if v.node_count != null }
}
output "cosmosdb_cassandra_datacenters_seed_node_ip_addresses" {
  description = "Map of seed_node_ip_addresses values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.seed_node_ip_addresses if v.seed_node_ip_addresses != null && length(v.seed_node_ip_addresses) > 0 }
}
output "cosmosdb_cassandra_datacenters_sku_name" {
  description = "Map of sku_name values across all cosmosdb_cassandra_datacenters, keyed the same as var.cosmosdb_cassandra_datacenters"
  value       = { for k, v in azurerm_cosmosdb_cassandra_datacenter.cosmosdb_cassandra_datacenters : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}

