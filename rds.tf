resource "aws_db_instance" "sql_db" {
  allocated_storage    = 20
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  identifier          = "sql-db"
  db_name             = "my_sqldb"
  username            = "admin"
  password            = "mypassword"
  
  parameter_group_name = "default.mysql5.7"
  
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.db_security_group.id]
  
  tags = {
    Name = "SqlDB"
  }
}


resource "aws_security_group" "db_security_group" {
  name_prefix = "db-security-group"

ingress {
      from_port   = 3306  // MySQL port
      to_port     = 3306  // MySQL port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]  // Specify the IP range you want to allow
      description = "Allow MySQL traffic"
    }

}

