resource "datadog_timeboard" "memcached" {
  count = "${var.enabled}"

  title       = "${var.product_domain} - ${var.cluster} - ${var.environment} - Memcached"
  description = "A generated timeboard for Memcached"

  template_variable {
    default = "${var.cluster}"
    name    = "cluster"
    prefix  = "cacheclusterid"
  }

  template_variable {
    default = "${var.environment}"
    name    = "environment"
    prefix  = "environment"
  }

  graph {
    title     = "Bytes Read into Memcached"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.bytes_read_into_memcached{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Bytes Used for Cache Items"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.bytes_used_for_cache_items{$cluster, $environment} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Bytes Used for Hash"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.bytes_used_for_hash{$cluster, $environment} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Bytes Written out from Memcached"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.bytes_written_out_from_memcached{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cas Badval"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.cas_badval{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cas Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.cas_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cas Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.cas_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Config Get"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.cmd_config_get{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Flush"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.cmd_flush{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Get"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.cmd_get{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Set"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.cmd_set{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Cmd Touch"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.cmd_touch{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "CPU Utilization"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.cpuutilization{$cluster, $environment} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Curr Config"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.elasticache.curr_config{$cluster, $environment} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Curr Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.curr_connections{$cluster, $environment} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Curr Items"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.curr_items{$cluster, $environment} by {cacheclusterid}"
      type = "area"
    }
  }

  graph {
    title     = "Decr Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.decr_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Decr Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.decr_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Delete Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.delete_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Delete Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.delete_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Evicted Unfetched"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.evicted_unfetched{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Evictions"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.evictions{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Expired Unfetched"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.expired_unfetched{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Freeable Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.freeable_memory{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Get Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.get_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Get Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.get_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Incr Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.incr_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Incr Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.incr_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

    graph {
      title     = "Network Bytes In"
      viz       = "timeseries"
      autoscale = true

      request {
        q    = "sum:aws.elasticache.network_bytes_in{$cluster, $environment} by {cacheclusterid}.as_count()"
        type = "area"
      }
    }

  graph {
    title     = "Network Bytes Out"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.network_bytes_out{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "New Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.new_connections{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "New Items"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.new_items{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Reclaimed"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.reclaimed{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Slabs Moved"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.slabs_moved{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Swap Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.swap_usage{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Touch Hits"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.touch_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Touch Misses"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.touch_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }

  graph {
    title     = "Unused Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:aws.elasticache.unused_memory{$cluster, $environment} by {cacheclusterid}.as_count()"
      type = "area"
    }
  }
}
