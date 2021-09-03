variable "agent_vms_network" {
  type = string
}

variable "agent_vms_subnetwork" {
  type = string
}

variable "docker_swarm_agent" {
  type = object({
    linux = object({
      vm_image_name = string
      vm_cloud_config_url = string
    })
    windows = object({
      vm_image_name = string
    })
  })
}

variable "docker_static_agent_templates" {
  type = object({
    linux = map(object({
      machine_type = string
      boot_disk_type = string
      boot_disk_size = number
      persistent_disk_type = string
      persistent_disk_size = number
      preemptible = bool
    }))
    windows = map(object({
      machine_type = string
      boot_disk_type = string
      boot_disk_size = number
      preemptible = bool
    }))
  })
}

variable "docker_static_agents" {
  type = object({
    linux = map(object({
      template = string
      jenkins_labels = string
    }))
    windows = map(object({
      template = string
      jenkins_labels = string
    }))
  })
}

variable "agent_service_account_email" {
  type = string
}