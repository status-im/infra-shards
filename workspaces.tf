/**
 * This is a hacky way of binding specific variable
 * values to different Terraform workspaces.
 *
 * Details:
 * https://github.com/hashicorp/terraform/issues/15966
 */

locals {
  env = {
    defaults = {
      /* Default settings for all fleets/workspaces. */

      boot_hosts_count = 1
      store_hosts_count = 2
      store_db_hosts_count = 1
      store_db_data_vol_size = 100

      do_type = "s-1vcpu-2gb" /* DigitalOcean */
      ac_type = "ecs.t5-lc1m2.small" /* Alibaba Cloud */
      gc_type = "g1-small" /* Google Cloud */
    }

    test = {
      /* Settings specific to the test fleet/workspace. */
    }
    staging = {
      /* Settings specific to the test fleet/workspace. */
    }
  }
}

/* Makes fleet settings available under local.ws. */
locals {
  ws = merge(local.env["defaults"], local.env[terraform.workspace])
}
