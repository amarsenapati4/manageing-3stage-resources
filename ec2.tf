resource "aws_key_pair" "deployer" {
    key_name = "tws-terra-key"
    public_key = file("${path.module}/terra-key2.pub")
}

#default vpc
resource "aws_default_vpc" "default" {
  
}

# security group
resource "aws_security_group" "dev-security-grp" {
  name="modammd-${var.my-Environment}-security-grp"
  description = "this sg is to open ports for ec2"
  vpc_id = aws_default_vpc.default.id #interpolation


  ingress {
    description = "This is for ssh"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}

resource "aws_instance" "modammd-instance" {
  ami = var.ami_id
  instance_type = "${var.instance_type}"
  key_name = aws_key_pair.deployer.key_name
  security_groups = [ aws_security_group.dev-security-grp.name]
  tags={
    name="modammd-${var.my-Environment}"
  }
}