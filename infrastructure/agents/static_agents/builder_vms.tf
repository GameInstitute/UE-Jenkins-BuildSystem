// Access the Google provider's configuration (we will use this to get access tokens)
data "google_client_config" "default" {
}

// Fetch the contents of a cloud-config file from a GCS bucket
data "http" "linux_swarm_agent_vm_cloud_config" {
  url = var.swarm_agent.linux.vm_cloud_config_url

  request_headers = {
      Authorization = "Bearer ${data.google_client_config.default.access_token}"
  }
}


resource "google_compute_instance" "linux_build_agent" {

    for_each = var.linux_build_agents

    name = each.key

    machine_type = each.value.machine_type

    boot_disk {

        initialize_params {
            size = each.value.boot_disk_size
            type = "pd-ssd"
            image = var.swarm_agent.linux.vm_image_name
        }

    }

    attached_disk {
        source = google_compute_disk.linux_build_agent_pd[each.key].self_link
    }

    network_interface {

        network = var.agent_vms_network
        subnetwork = var.agent_vms_subnetwork

        access_config {

            // Auto-generate external IP

        }
    }

    service_account {
        email = var.agent_service_account_email
        scopes = [ "cloud-platform" ]
    }

    metadata = {
        google-logging-enabled = "true"
        user-data = data.http.linux_swarm_agent_vm_cloud_config.body
    }
}

resource "google_compute_disk" "linux_build_agent_pd" {
 
    for_each = var.linux_build_agents
    name  = "${each.key}-pd"
    size =  each.value.persistent_disk_size
    type  = "pd-ssd"
}

resource "google_compute_instance" "windows_build_agent" {

    for_each = var.windows_build_agents

    name = each.key

    machine_type = each.value.machine_type

    boot_disk {

        initialize_params {
            size = each.value.boot_disk_size
            type = "pd-ssd"
            image = var.swarm_agent.windows.vm_image_name
        }

    }

    network_interface {

        network = var.agent_vms_network
        subnetwork = var.agent_vms_subnetwork

        access_config {

            // Auto-generate external IP

        }
    }

    service_account {
        email = var.agent_service_account_email
        scopes = [ "cloud-platform" ]
    }
}