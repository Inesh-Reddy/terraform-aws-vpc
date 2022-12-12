module "vpc" {
  source = "../../modules/vpc-opinionated"

  create_vpc              = var.create_vpc
  region                  = var.region
  vpc_name                = var.vpc_name
  vpc_cidr                = var.vpc_cidr
  number_of_azs           = var.number_of_azs
  private_subnets         = var.private_subnets
  public_subnets          = var.public_subnets
  private_subnet_suffix   = var.private_subnet_suffix
  public_subnet_suffix    = var.public_subnet_suffix
  enable_dns_hostnames    = var.enable_dns_hostnames
  enable_dns_support      = var.enable_dns_support
  tags                    = var.tags
  enable_nat_gateway      = var.enable_nat_gateway
  single_nat_gateway      = var.single_nat_gateway
  one_nat_gateway_per_az  = var.one_nat_gateway_per_az
  map_public_ip_on_launch = var.map_public_ip_on_launch

  enable_flow_log                      = var.enable_flow_log
  create_flow_log_cloudwatch_log_group = var.create_flow_log_cloudwatch_log_group
  create_flow_log_cloudwatch_iam_role  = var.create_flow_log_cloudwatch_iam_role
  flow_log_max_aggregation_interval    = var.flow_log_max_aggregation_interval
  vpc_flow_log_tags                    = var.vpc_flow_log_tags

  enable_public_dedicated_network_acl  = var.enable_public_dedicated_network_acl
  enable_private_dedicated_network_acl = var.enable_private_dedicated_network_acl
  public_inbound_acl_rules             = var.public_inbound_acl_rules
  public_outbound_acl_rules            = var.public_outbound_acl_rules
  private_inbound_acl_rules            = var.private_inbound_acl_rules
  private_outbound_acl_rules           = var.private_outbound_acl_rules

  create_vpc_endpoints = var.create_vpc_endpoints
  endpoint_subnet      = var.endpoint_subnet
}
