locals {
  azs             = var.number_of_azs == 1 ? tolist([element(data.aws_availability_zones.available.names, var.number_of_azs - 1)]) : var.number_of_azs == 2 ? slice(data.aws_availability_zones.available.names, var.number_of_azs - 2, var.number_of_azs) : var.number_of_azs == 3 ? try(slice(data.aws_availability_zones.available.names, var.number_of_azs - 3, var.number_of_azs), tolist(element([data.aws_availability_zones.available.names], 0))) : tolist(element([data.aws_availability_zones.available.names], 0))
  endpoint_config = yamldecode(file("${path.module}/endpoints.yaml"))
}
