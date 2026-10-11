output "jms_fleets_lookup_id" {
  description = "Map of id values across all jms_fleets_lookup, keyed the same as var.jms_fleets_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_jms_fleets.jms_fleets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jms_fleets_lookup_compartment_id" {
  description = "Map of compartment_id values across all jms_fleets_lookup, keyed the same as var.jms_fleets_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_jms_fleets.jms_fleets_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "jms_fleets_lookup_display_name" {
  description = "Map of display_name values across all jms_fleets_lookup, keyed the same as var.jms_fleets_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_jms_fleets.jms_fleets_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "jms_fleets_lookup_display_name_contains" {
  description = "Map of display_name_contains values across all jms_fleets_lookup, keyed the same as var.jms_fleets_lookup except keys with no display_name_contains are omitted"
  value       = { for k, v in data.oci_jms_fleets.jms_fleets_lookup : k => v.display_name_contains if v.display_name_contains != null && length(v.display_name_contains) > 0 }
}
output "jms_fleets_lookup_filter" {
  description = "Map of filter values across all jms_fleets_lookup, keyed the same as var.jms_fleets_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_jms_fleets.jms_fleets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "jms_fleets_lookup_fleet_collection" {
  description = "Map of fleet_collection values across all jms_fleets_lookup, keyed the same as var.jms_fleets_lookup except keys with no fleet_collection are omitted"
  value       = { for k, v in data.oci_jms_fleets.jms_fleets_lookup : k => v.fleet_collection if v.fleet_collection != null && length(v.fleet_collection) > 0 }
}
output "jms_fleets_lookup_state" {
  description = "Map of state values across all jms_fleets_lookup, keyed the same as var.jms_fleets_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_jms_fleets.jms_fleets_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

