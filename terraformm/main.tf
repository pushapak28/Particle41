module "vpc" {
  source = "./modules/vpc"
}

module "ecs" {
  source          = "./modules/ecs"
  vpc_id          = module.vpc.vpc_id
  public_subnet_a = module.vpc.public_subnet_a_id
  public_subnet_b = module.vpc.public_subnet_b_id
  private_subnet_a = module.vpc.private_subnet_a_id
  private_subnet_b = module.vpc.private_subnet_b_id
  ecs_sg          = module.vpc.security_group_id
}

module "api_gateway" {
  source = "./modules/api_gateway"
  lambda_function_arn = module.lambda.lambda_function_arn
}

module "lambda" {
  source     = "./modules/lambda"
  vpc_id     = module.vpc.vpc_id
  private_subnet_a = module.vpc.private_subnet_a_id
  private_subnet_b = module.vpc.private_subnet_b_id
}
