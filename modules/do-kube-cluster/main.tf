resource "digitalocean_vpc" "example" {
  name     = "k8s-project-network"
  region   = "sgp1"
  ip_range = "10.10.10.0/24"
}
