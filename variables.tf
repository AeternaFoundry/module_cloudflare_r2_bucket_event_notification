variable "r2_bucket_event_notifications" {
  description = <<EOT
Map of r2_bucket_event_notifications, attributes below
Required:
    - account_id
    - bucket_name
    - queue_id
    - rules
Optional:
    - jurisdiction
EOT

  type = map(object({
    account_id  = string
    bucket_name = string
    queue_id    = string
    rules = list(object({
      actions     = list(string)
      description = optional(string)
      prefix      = optional(string)
      suffix      = optional(string)
    }))
    jurisdiction = optional(string)
  }))
}

