resource "aws_ssm_parameter" "mysql_sg_id" {
    name = "/${var.project_name_rm}/${var.environment_rm}/mysql-sg-id"
    type = "String"
    value = module.mysql_sg.id
}

resource "aws_ssm_parameter" "backend-sg-id" {
    name = "/${var.project_name_rm}/${var.environment_rm}/backend-sg-id"
    type = "String"
    value = module.backend_sg.id
}

resource "aws_ssm_parameter" "frontend-sg-id" {
    name = "/${var.project_name_rm}/${var.environment_rm}/frontend-sg-id"
    type = "String"
    value = module.frontend_sg.id
}

resource "aws_ssm_parameter" "ansible-sg-id" {
    name = "/${var.project_name_rm}/${var.environment_rm}/ansible-sg-id"
    type = "String"
    value = module.ansible_sg.id
}

resource "aws_ssm_parameter" "bastion-sg-id" {
    name = "/${var.project_name_rm}/${var.environment_rm}/bastion-sg-id"
    type = "String"
    value = module.bastion_sg.id
}
