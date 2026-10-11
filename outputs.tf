output "partition_lookup_id" {
  description = "Map of id values across all partition_lookup, keyed the same as var.partition_lookup"
  value       = { for k, v in data.aws_partition.partition_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "partition_lookup_dns_suffix" {
  description = "Map of dns_suffix values across all partition_lookup, keyed the same as var.partition_lookup"
  value       = { for k, v in data.aws_partition.partition_lookup : k => v.dns_suffix if v.dns_suffix != null && length(v.dns_suffix) > 0 }
}
output "partition_lookup_partition" {
  description = "Map of partition values across all partition_lookup, keyed the same as var.partition_lookup"
  value       = { for k, v in data.aws_partition.partition_lookup : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "partition_lookup_reverse_dns_prefix" {
  description = "Map of reverse_dns_prefix values across all partition_lookup, keyed the same as var.partition_lookup"
  value       = { for k, v in data.aws_partition.partition_lookup : k => v.reverse_dns_prefix if v.reverse_dns_prefix != null && length(v.reverse_dns_prefix) > 0 }
}

