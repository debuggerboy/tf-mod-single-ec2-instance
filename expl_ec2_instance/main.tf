resource "aws_instance" "web" {
  ami           = var.expl_svr_ami_id
  instance_type = var.expl_svr_inst_type
  key_name = var.expl_svr_key_pair

  tags = {
    Name = var.expl_svr_inst_name
  }
}