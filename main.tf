terraform {
    required_providers {
        minikube = {
            source = "scott-the-programmer/minikube"
            version = "0.5.3"
        }
        kubernetes = {
            source = "hashicorp/kubernetes"
            version = "~> 3.0"
        }
        helm = {
            source = "hashicorp/helm"
            version = "~> 3.0"
        }
    }
}

provider "minikube" {
    kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "minikube_docker" {
    cluster_name = "time-devops-project-docker"
    driver = "docker"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]

}