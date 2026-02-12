# Key Pair
resource "aws_key_pair" "my_key" {
  key_name   = "${var.env}-infra-app-key-ec2"
  public_key = file("terra-key-ec2.pub")
  tags = {
    Name        = "${var.env}-infra-app-key-ec2"
    Environment = var.env
    
  }
}

# Default VPC
resource "aws_default_vpc" "default_vpc" {}

# Security Group
resource "aws_security_group" "my_security" {
  name        = "${var.env}-infra-app-auto-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = aws_default_vpc.default_vpc.id

  #SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  # HTTP
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

ingress{
    from_port = 8000
    to_port = 8000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allowing traffic on port 8000 for application access"
}


  # Outbound (REQUIRED)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Instance

resource "aws_instance" "my_instance" {
count=var.instance_count
  ami                    = var.aws_ami_id
  instance_type          = var.aws_instance_type
  subnet_id              = data.aws_subnet.public.id
  key_name               = aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.my_security.id]
  root_block_device {
    volume_size = var.env == "prod" ? 20 : 10
    volume_type = "gp3"
  }

  tags = {
    Name = "${var.env}-infra-app-instance-$"
  }
}