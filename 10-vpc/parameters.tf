resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name_rm}/${var.environment_rm}/vpc-id"
    type =  "String"
    value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project_name_rm}/${var.environment_rm}/public-subnet-ids"
    type = "StringList"
    value = join(", ", module.vpc.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
    name = "/${var.project_name_rm}/${var.environment_rm}/private-subnet-ids" 
    type = "StringList"
    value = join(", ", module.vpc.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
    name = "/${var.project_name_rm}/${var.environment_rm}/database-subnet-ids" 
    type = "StringList"
    value = join(", ", module.vpc.database_subnet_ids)
}

resource "aws_ssm_parameter" "db_subnet_group_name" {
    name = "/${var.project_name_rm}/${var.environment_rm}/db-subnet-group-name"
    type = "StringList"
    value = module.vpc.db_subnet_group_name
}

