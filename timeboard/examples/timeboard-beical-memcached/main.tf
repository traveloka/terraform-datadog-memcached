module "timeboard_memcached_beical-memcached" {
  source         = "../../"
  product_domain = "BEI"
  cluster        = "beical-memcached"
}
