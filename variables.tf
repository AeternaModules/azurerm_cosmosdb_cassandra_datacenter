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
    availability_zones_enabled      = optional(bool, true)
    backup_storage_customer_key_uri = optional(string)
    base64_encoded_yaml_fragment    = optional(string)
    disk_count                      = optional(number)
    disk_sku                        = optional(string, "P30")
    managed_disk_customer_key_uri   = optional(string)
    node_count                      = optional(number, 3)
    sku_name                        = optional(string, "Standard_E16s_v5")
  }))
}

