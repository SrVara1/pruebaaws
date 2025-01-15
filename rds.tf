# Proveedor de AWS para RDS (con alias "rds")
provider "aws" {
  alias  = "rds"
  region = "eu-south-2"
}

# Instancia de RDS MySQL
resource "aws_db_instance" "mi_rds" {
  provider           = aws.rds  # Usamos el proveedor con alias "rds"
  identifier         = "mi-rds-instance"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = "admin"
  password          = "MiClaveSegura123!"
  publicly_accessible = false
  skip_final_snapshot = true
}

