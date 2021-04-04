data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

module "expl_ec2_instance" {
  source = "./expl_ec2_instance"

  expl_svr_inst_type = var.expl_svr_inst_type
  expl_svr_inst_name = var.expl_svr_inst_name
  expl_svr_key_pair  = var.expl_svr_key_pair
  expl_svr_ami_id    = data.aws_ami.ubuntu.id

}