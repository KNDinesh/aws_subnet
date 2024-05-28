# variables for the module
variable "vpc_id" {
  description = "ID of the VPC that gets created for this module"
  type        = string 
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "subnets" {
  description = "Map of subnet configurations"
  type = map(object({
    cidr_block = string
    az        = string
    public    = bool
    environment = string
  }))
}

# VPC Public Subnets
variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
}

# VPC Private Subnets
variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
}
