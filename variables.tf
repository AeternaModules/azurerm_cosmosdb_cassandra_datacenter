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
    availability_zones_enabled      = optional(bool) # Default: true
    backup_storage_customer_key_uri = optional(string)
    base64_encoded_yaml_fragment    = optional(string)
    disk_count                      = optional(number)
    disk_sku                        = optional(string) # Default: "P30"
    managed_disk_customer_key_uri   = optional(string)
    node_count                      = optional(number) # Default: 3
    sku_name                        = optional(string) # Default: "Standard_E16s_v5"
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_datacenters : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_datacenters : (
        v.base64_encoded_yaml_fragment == null || (length(v.base64_encoded_yaml_fragment) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_datacenters : (
        v.disk_sku == null || (length(v.disk_sku) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_datacenters : (
        v.node_count == null || (v.node_count >= 3)
      )
    ])
    error_message = "must be at least 3"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_datacenters : (
        v.disk_count == null || (v.disk_count >= 1 && v.disk_count <= 10)
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_cassandra_datacenters : (
        v.sku_name == null || (length(v.sku_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_cassandra_datacenter's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
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
  # path: managed_disk_customer_key_uri
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: managed_disk_customer_key_uri
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
}

