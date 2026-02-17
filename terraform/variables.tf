variable "location" {
  default = "westeurope"
}

variable "resource_group_name" {
  default = "rg-ci-cd-demo"
}

variable "acr_name" {
  default = "acrprovpipeline"
}

variable "container_env" {
  default = "env-ci-cd-demo"
}

variable "container_app" {
  default = "flask-app-demo"
}
