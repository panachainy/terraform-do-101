resource "random_pet" "node" {
  length    = 2
  separator = "-"
}

# resource "digitalocean_vpc" "example" {
#   name     = "k8s-project-network"
#   region   = var.region
#   ip_range = "10.10.10.0/24"
# }

resource "digitalocean_kubernetes_cluster" "k8s" {
  name    = "k8s-${var.env}"
  region  = var.region
  version = data.digitalocean_kubernetes_versions.k8s_versions.latest_version

  node_pool {
    name = "${var.env}-${random_pet.node.id}-node-pool"
    size = var.node_size

    ## Static node pool
    node_count = var.node_count

    ## Auto scale node pool
    # min_nodes  = 1
    # max_nodes  = 5
  }
}

data "digitalocean_kubernetes_versions" "k8s_versions" {
  version_prefix = "1.21."
}
