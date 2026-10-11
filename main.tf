data "aws_partition" "partition_lookup" {
  for_each = var.partition_lookup

}

