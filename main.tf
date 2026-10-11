resource "cloudflare_r2_bucket_event_notification" "r2_bucket_event_notifications" {
  for_each = var.r2_bucket_event_notifications

  account_id   = each.value.account_id
  bucket_name  = each.value.bucket_name
  queue_id     = each.value.queue_id
  rules        = each.value.rules
  jurisdiction = each.value.jurisdiction
}

