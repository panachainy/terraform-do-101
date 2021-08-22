terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    random = {
      source = "hashicorp/random"
      version = "~> 3.1"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.1"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

provider "kubernetes" {
  host             = data.digitalocean_kubernetes_cluster.k8s.endpoint
  token            = data.digitalocean_kubernetes_cluster.k8s.kube_config[0].token
  cluster_ca_certificate = base64decode(
    data.digitalocean_kubernetes_cluster.k8s.kube_config[0].cluster_ca_certificate
  )
}
