variable "expl_svr_inst_type" {
  description = "Enter the EC2 Instance Type:"
  type        = string 
  default     = "t3.micro" 
}

variable "expl_svr_inst_name" {
  description = "Enter a name for this EC2 Instance:"
  type        = string
  default     = "svr01"
}

variable "expl_svr_key_pair" {
  description = "Enter the name of Key Pair which you want to use with this EC2 Instance:"
  type        = string
  default     = "anish"
}