# Proveedor de AWS
provider "aws" {
  region = "us-east-1" # Cambia según tu región
}

# Instancia EC2
resource "aws_instance" "mi_ec2" {
  ami           = "ami-0c02fb55956c7d316" # Cambia al ID de AMI de tu región
  instance_type = "t2.micro" # Cambia según tus necesidades

  tags = {
    Name = "Mi-EC2"
  }
}
