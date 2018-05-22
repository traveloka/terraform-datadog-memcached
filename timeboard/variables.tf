variable "product_domain" {
  type        = "string"
  description = "The name of the product domain which this memcached belongs to"
}

variable "cluster" {
  type        = "string"
  description = "The name of the cluster which this memcached belongs to"
}
