variable "region" {
  type    = string
}

variable "agent_vms_network" {
  type = string
}

variable "agent_vms_subnetwork" {
  type = string
}

variable "cloud_config_store_bucket_id" {
  type = string
}

variable "longtail_store_bucket_id" {
  type = string
}

variable "ssh_agent_vm_image_linux" {
  type = string
}

variable "ssh_agent_vm_cloud_config_url_linux" {
  type = string
}

variable "ssh_agent_vm_image_windows" {
  type = string
}


variable "swarm_agent_vm_image_linux" {
  type = string
}

variable "swarm_agent_cloud_config_url_linux" {
  type = string
}

variable "swarm_agent_vm_image_windows" {
  type = string
}

variable "windows_build_agents" {
  type = map
}

variable "linux_build_agents" {
  type = map
}

variable "linux_build_agent_templates" {
  type = map
}

variable "windows_build_agent_templates" {
  type = map
}

variable "settings" {
  type = object({
    jenkins-url = string
    ssh-agent-image-url-linux = string
    ssh-agent-image-url-windows = string
    swarm-agent-image-url-linux = string
    swarm-agent-image-url-windows = string
    ssh-vm-public-key-windows = string
  })
}