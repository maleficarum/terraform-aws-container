# locals.tf
locals {
  default_environment_vars = []

  final_environment_vars = concat(
    local.default_environment_vars,
    var.environment_variables
  )
}