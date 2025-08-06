data "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name_rm}/${var.environment_rm}/vpc-id"
}
