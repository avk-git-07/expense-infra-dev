variable "project_name_rm" {
    default = "expense"
} 

variable "environment_rm" {
    default = "dev"
}

variable "vpc_cidr_rm" {
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames_rm" {
    default = true
}

variable "common_tags_rm" {
    default = {
        Environment = "dev"
        Terraform = "true"
        Project  = "expense"
    }
}

variable "public_subnet_cidrs_rm" {
    type = list
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs_rm" {
    type = list
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidrs_rm" {
    type = list
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "is_peering_required_rm" {
    type = bool
    default = true
}
