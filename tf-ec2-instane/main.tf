resource "aws_security_group" "my_sg" {
  name        = "ec2_security_group"
  description = "Allow access to the EC2 instance"
  vpc_id     = var.vpc_id
    ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Change this to restrict access
  }


  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Change this to restrict access
  }
}
  resource "aws_instance" "my_instance" {
  ami           = var.ami_id 
  instance_type = var.instance_size
  subnet_id     = element(var.private_subnet_ids, 0) # Use the first private subnet
  security_groups = [aws_security_group.my_sg.name]

  tags = {
    Name = "test_instance"
  }
}

# mauricio.wyler@lendistry.com