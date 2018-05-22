resource "datadog_timeboard" "memcached" {
  title       = "${var.product_domain} - ${var.cluster} - Memcached"
  description = "A generated timeboard for Memcached"

  template_variable {
    default = "${var.cluster}"
    name    = "cluster"
    prefix  = "cacheclusterid"
  }

  graph {
    title     = "Bytes Read into Memcached"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.bytes_read_into_memcached{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Bytes Used for Cache Items"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.bytes_used_for_cache_items{$cluster} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Bytes Used for Hash"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.bytes_used_for_hash{$cluster} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Bytes Written out from Memcached"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.bytes_written_out_from_memcached{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Bytes Written out from Memcached"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.bytes_written_out_from_memcached{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cas Badval"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cas_badval{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cas Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cas_hits{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cas Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cas_misses{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Config Get"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cmd_config_get{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Flush"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cmd_flush{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Get"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cmd_get{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Set"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cmd_set{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Touch"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cmd_touch{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "CPU Utilization"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cpuutilization{$cluster} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Curr Config"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.curr_config{$cluster} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Curr Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.curr_connections{$cluster} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Curr Items"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.curr_items{$cluster} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Decr Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.decr_hits{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Decr Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.decr_misses{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Delete Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.delete_hits{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Delete Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.delete_misses{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Evicted Unfetched"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.evicted_unfetched{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Evictions"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.evictions{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Expired Unfetched"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.expired_unfetched{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Freeable Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.freeable_memory{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Get Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.get_hits{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Get Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.get_misses{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Incr Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.incr_hits{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Incr Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.incr_misses{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Network Bytes Out"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.network_bytes_out{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "New Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.new_connections{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "New Items"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.new_items{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Reclaimed"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.reclaimed{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Slabs Moved"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.slabs_moved{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Swap Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.swap_usage{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Touch Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.touch_hits{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Touch Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.touch_misses{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Unused Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.unused_memory{$cluster} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }
}
