resource "azurerm_scheduler_job" "export_campaigns" {
  name                = "${var.scheduler_job_name}"
  resource_group_name = "${var.azurerm_resource_group_default_name}"
  job_collection_name = "${var.azurerm_scheduler_job_collection_default_name}"

  # re-enable it each run
  state = "${var.scheduler_job_state}"

  action_web {
    url    = "${var.orchestrator_url}"
    method = "${var.orchestrator_http_method}"

    headers = {
      Content-Type = "${var.scheduler_job_context_type}"
    }

    authentication_basic {
      username = "${var.scheduler_username}"
      password = "${var.scheduler_password}"
    }
  }

  recurrence {
    frequency = "${var.scheduler_job_frequesncy}"
    count     = "${var.scheduler_job_count}"

    # run 4 times an hour every 12 hours
    hours   = [0]
    minutes = [0]
  }
   start_time = "${var.scheduler_job_start_time}"
}