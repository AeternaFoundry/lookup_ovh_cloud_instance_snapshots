data "ovh_cloud_instance_snapshots" "cloud_instance_snapshots_lookup" {
  for_each = var.cloud_instance_snapshots_lookup

  instance_id  = each.value.instance_id
  region       = each.value.region
  service_name = each.value.service_name
}

