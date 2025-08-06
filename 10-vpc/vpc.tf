module "vpc" {
    source = "git::https://github.com/avk-git-07/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name_rm
    environment = var.environment_rm
    enable_dns_hostnames = var.enable_dns_hostnames_rm
    vpc_cidr = var.vpc_cidr_rm
    common_tags = var.common_tags_rm
    public_subnet_cidrs = var.public_subnet_cidrs_rm
    private_subnet_cidrs = var.private_subnet_cidrs_rm
    database_subnet_cidrs = var.database_subnet_cidrs_rm
    is_peering_required = var.is_peering_required_rm
}