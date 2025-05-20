variable "ecs_cluster_name" {
  type        = string
  description = "The name for this ECS"
}

variable "container_definition" {
  description = "The container definition"

  type = object({
    name          = string,
    image         = string,
    desired_count = number
    port_mapping = list(object({
      containerPort = number,
      hostPort      = number
    }))
  })
}

variable "target_subnets" {
  description = "The target subnets to deploy the ECS clsuter"
  type        = list(string)
}

variable "ecs_tasks" {
  type        = string
  description = "ECS deployment tasks"
}

variable "target_group_arn" {
  type        = string
  description = "Target ARN"
}

variable "health_check_application" {
  type        = string
  description = "Health check endpoint for the application"
}

#Environment data for the container
variable "environment_variables" {
  type = list(object({
    name  = string,
    value = string
  }))
  default     = []
  description = "Environment variables for the container"
}

variable "region" {
  type = string
  description = "The region"
}