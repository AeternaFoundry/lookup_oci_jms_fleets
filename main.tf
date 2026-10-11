data "oci_jms_fleets" "jms_fleets_lookup" {
  for_each = var.jms_fleets_lookup

  compartment_id        = each.value.compartment_id
  display_name          = each.value.display_name
  display_name_contains = each.value.display_name_contains
  state                 = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

