variable "cosmosdb_cassandra_datacenters" {
  description = <<EOT
Map of cosmosdb_cassandra_datacenters, attributes below
Required:
    - cassandra_cluster_id
    - delegated_management_subnet_id
    - location
    - name
Optional:
    - availability_zones_enabled
    - backup_storage_customer_key_uri
    - base64_encoded_yaml_fragment
    - disk_count
    - disk_sku
    - managed_disk_customer_key_uri
    - node_count
    - sku_name
EOT

  type = map(object({
    cassandra_cluster_id            = string
    delegated_management_subnet_id  = string
    location                        = string
    name                            = string
    availability_zones_enabled      = optional(bool)
    backup_storage_customer_key_uri = optional(string)
    base64_encoded_yaml_fragment    = optional(string)
    disk_count                      = optional(number)
    disk_sku                        = optional(string)
    managed_disk_customer_key_uri   = optional(string)
    node_count                      = optional(number)
    sku_name                        = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_cassandra_datacenter's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: cassandra_cluster_id
  #   source:    [from managedcassandras.ValidateCassandraClusterID] !ok
  # path: cassandra_cluster_id
  #   source:    [from managedcassandras.ValidateCassandraClusterID] err != nil
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: delegated_management_subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: delegated_management_subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: backup_storage_customer_key_uri
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: backup_storage_customer_key_uri
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: base64_encoded_yaml_fragment
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: disk_sku
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: managed_disk_customer_key_uri
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: managed_disk_customer_key_uri
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: node_count
  #   condition: value >= 3
  #   message:   must be at least 3
  # path: disk_count
  #   condition: value >= 1 && value <= 10
  #   message:   must be between 1 and 10
  # path: sku_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

