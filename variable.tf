variable "do_token" {
    type = string
    description = "DigitalOcean Token"
}

variable "project_name" {
    type = string
    description = "DO Project Name"
}

variable "env" {
    type = string
    description = "Environtment env"
}

variable "node_size" {
    default = "s-2vcpu-4gb"
    description = "Droplet instance Size"
}

variable "node_count" {
    description = "Droplet instance Size"
}

variable "domain" {
    type = string
    description = "Domain Name"
}
