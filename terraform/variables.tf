# variables.tf
variable "docker_image" {
  description = "The Docker image to deploy to Azure Container Instance"
  type        = string
}
variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}