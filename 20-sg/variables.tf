variable "project_name_rm" {
    default = "expense"
}

variable "environment_rm" {
    default = "dev"
} 

variable "common_tags_rm" {
    default = {
        Project_name = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "mysql_sg_tags" {
    default = {
        Component = "mysql"
    }
}

variable "backend_sg_tags" {
    default = {
        Component = "backend"
    }
}

variable "frontend_sg_tags" {
    default = {
        Component = "frontend"
    }
}

variable "ansible_sg_tags" {
    default = {
        Component = "ansible"
    }
}

variable "bastion_sg_tags" {
    default = {
        Component = "bastion"
    }
}
