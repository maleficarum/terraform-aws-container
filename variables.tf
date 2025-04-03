variable "ecs_cluster_name" {
  type        = string
  description = "The name for this ECS"
}

variable "container_definition" {
  description = "The container definition"

  type = object({
    name         = string,
    image        = string,
    port_mapping = list(object({
        containerPort = number,
        hostPort = number
    }))
  })
}