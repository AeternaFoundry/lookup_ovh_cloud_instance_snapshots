output "cloud_instance_snapshots_lookup_instance_id" {
  description = "Map of instance_id values across all cloud_instance_snapshots_lookup, keyed the same as var.cloud_instance_snapshots_lookup except keys with no instance_id are omitted"
  value       = { for k, v in data.ovh_cloud_instance_snapshots.cloud_instance_snapshots_lookup : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "cloud_instance_snapshots_lookup_region" {
  description = "Map of region values across all cloud_instance_snapshots_lookup, keyed the same as var.cloud_instance_snapshots_lookup except keys with no region are omitted"
  value       = { for k, v in data.ovh_cloud_instance_snapshots.cloud_instance_snapshots_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloud_instance_snapshots_lookup_service_name" {
  description = "Map of service_name values across all cloud_instance_snapshots_lookup, keyed the same as var.cloud_instance_snapshots_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_instance_snapshots.cloud_instance_snapshots_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "cloud_instance_snapshots_lookup_snapshots" {
  description = "Map of snapshots values across all cloud_instance_snapshots_lookup, keyed the same as var.cloud_instance_snapshots_lookup except keys with no snapshots are omitted"
  value       = { for k, v in data.ovh_cloud_instance_snapshots.cloud_instance_snapshots_lookup : k => v.snapshots if v.snapshots != null && length(v.snapshots) > 0 }
}

