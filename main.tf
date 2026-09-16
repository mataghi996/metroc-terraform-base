resource "aws_instance" "webserver" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_ssm_parameter.customVPCparameter["ec2_sg_id"].value]
  subnet_id              = [data.aws_ssm_parameter.customVPCparameter["subnet1_id"].value]

  tags = {
    Name = "learn-terraform"
  }
}

