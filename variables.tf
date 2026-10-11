variable "partition_lookup" {
  description = <<EOT
Map of partition_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

