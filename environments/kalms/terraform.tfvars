ssh_agent_vm_image_linux = "projects/cos-cloud/global/images/cos-89-16108-403-26"
ssh_agent_vm_cloud_config_url_linux = "https://storage.googleapis.com/kalms-ue-jenkins-buildsystem-cloud-config/ue-jenkins-ssh-agent-vm/cloud-config-commit-11ddebe.yaml"
ssh_agent_vm_image_windows = "projects/kalms-ue-jenkins-buildsystem/global/images/ue-jenkins-ssh-agent-vm-test-windows"

swarm_agent_vm_image_linux = "projects/cos-cloud/global/images/cos-89-16108-403-26"
swarm_agent_cloud_config_url_linux = "https://storage.googleapis.com/kalms-ue-jenkins-buildsystem-cloud-config/ue-jenkins-swarm-agent-vm/cloud-config-commit-c7e17b6.yaml"
swarm_agent_vm_image_windows = "projects/kalms-ue-jenkins-buildsystem/global/images/ue-jenkins-swarm-agent-vm-c7e17b6-windows"

ssh_agent_docker_image_url_linux = "europe-west1-docker.pkg.dev/kalms-ue-jenkins-buildsystem/docker-build-artifacts/ue-jenkins-ssh-agent:commit-aa13570-linux"
ssh_agent_docker_image_url_windows = "europe-west1-docker.pkg.dev/kalms-ue-jenkins-buildsystem/docker-build-artifacts/ue-jenkins-ssh-agent:commit-434e447-windows"

swarm_agent_docker_image_url_linux = "europe-west1-docker.pkg.dev/kalms-ue-jenkins-buildsystem/docker-build-artifacts/ue-jenkins-swarm-agent:commit-c7e17b6-linux"
swarm_agent_docker_image_url_windows = "europe-west1-docker.pkg.dev/kalms-ue-jenkins-buildsystem/docker-build-artifacts/ue-jenkins-swarm-agent:commit-c7e17b6-windows"

windows_build_agents = {
/*
    "build-engine-windows-git-docker" = {
        "machine_type" = "n1-standard-32"
        "boot_disk_size" = 50
        "persistent_disk_size" = 200
    }

    "build-game-windows-git-docker" = {
        "machine_type" = "n1-standard-4"
        "boot_disk_size" = 50
        "persistent_disk_size" = 200
    }

    "build-game-windows-plastic-docker" = {
        "machine_type" = "n1-standard-4"
        "boot_disk_size" = 50
        "persistent_disk_size" = 200
    }
*/
}

linux_build_agents = {
/*
    "build-engine-linux-git-docker" = {
        "machine_type" = "n1-standard-32"
        "boot_disk_size" = 50
        "persistent_disk_size" = 200
    }

    "build-game-linux-git-docker" = {
        "machine_type" = "n1-standard-8"
        "boot_disk_size" = 50
        "persistent_disk_size" = 200
    }

    "build-game-linux-plastic-docker" = {
        "machine_type" = "n1-standard-8"
        "boot_disk_size" = 50
        "persistent_disk_size" = 200
    }
*/
}

windows_build_agent_templates = {
/*
    "build-engine-windows" = {
        "machine_type" = "n1-standard-32"
        "boot_disk_size" = 200
    }
*/
    "build-game-windows" = {
        "machine_type" = "n1-standard-8"
        "boot_disk_size" = 200
    }

}

linux_build_agent_templates = {
/*
    "build-engine-linux" = {
        "machine_type" = "n1-standard-32"
        "boot_disk_size" = 50
        "persistent_disk_size" = 200
    }
*/
    "build-game-linux" = {
        "machine_type" = "n1-standard-8"
        "boot_disk_size" = 50
        "persistent_disk_size" = 200
    }

}
