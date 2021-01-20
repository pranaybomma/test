//Pipeline

# AWS Transit Module Region 1
module "transit_aws_1" {
  source        = "terraform-aviatrix-modules/aws-transit/aviatrix"
  version       = "v3.0.0"
  name          = var.aws_transit_name1
  cidr          = var.aws_transit_cidr1
  region        = var.aws_region1
  account       = var.aws_account_name
  insane_mode   = var.insane
  instance_size = var.aws_hpe_gw_size
  prefix        = false
  suffix        = false
}


# AWS Transit Module Region 2
module "transit_aws_2" {
  source        = "terraform-aviatrix-modules/aws-transit/aviatrix"
  version       = "v3.0.0"
  name          = var.aws_transit_name2
  cidr          = var.aws_transit_cidr2
  region        = var.aws_region2
  account       = var.aws_account_name
  insane_mode   = var.insane
  instance_size = var.aws_hpe_gw_size
  prefix        = false
  suffix        = false
}

module "transit-peering" {
  source  = "terraform-aviatrix-modules/mc-transit-peering/aviatrix"
  version = "1.0.1"

  transit_gateways = [
    var.aws_transit_name1,
    var.aws_transit_name2
  ]
}
