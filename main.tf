module "do-k8s-cluster" {
  source = "./modules/do-k8s-cluster"
  region = "sgp1"

  do_token     = var.do_token
  project_name = var.project_name
  env          = var.env
  domain       = var.domain

  node_size  = var.node_size
  node_count = var.node_count
}
