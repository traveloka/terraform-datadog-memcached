module "memcached" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  cluster        = "beical-memcached"
  environment    = "production"

  recipients        = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
  renotify_interval = 0
  notify_audit      = false
}
