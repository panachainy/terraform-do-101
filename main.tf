resource "digitalocean_vpc" "example" {
  name     = "example-project-network"
  region   = "sgp"
  ip_range = "10.10.10.0/24"
}
