variable "jms_fleets_lookup" {
  description = <<EOT
Map of jms_fleets_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - display_name_contains
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id        = optional(string)
    display_name          = optional(string)
    display_name_contains = optional(string)
    state                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

