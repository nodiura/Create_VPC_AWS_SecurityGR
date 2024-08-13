variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "my-vpc"
}

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

variable "sg_rules" {
  description = "A list of security group rules for both ingress and egress"
  type = list(object({
    type        = string   # "ingress" or "egress"
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, null)
  }))
  default = []
}
