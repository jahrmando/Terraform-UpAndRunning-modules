resource "aws_db_instance" "example" {
  identifier_prefix   = "${var.cluster_name}-rds"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  name                = "example_database"
  username            = "admin"
  skip_final_snapshot = "true"
  password            = var.db_password
}

