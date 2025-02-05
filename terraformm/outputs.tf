output "load_balancer_url" {
  value = module.ecs.load_balancer_url
}

output "lambda_url" {
  value = module.api_gateway.api_gateway_url
}
