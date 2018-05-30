output "timeboard_title" {
  value       = "${join(",", datadog_timeboard.memcached.*.title)}"
  description = "The title of datadog timeboard for Memcached"
}
