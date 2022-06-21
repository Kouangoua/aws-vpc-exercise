# Create Database Security Group
resource "aws_security_group" "database-sg" {
    name        = "Database SG"
    description = "Allow inbound traffic from application layer"
    vpc_id      = aws_vpc.vpc.id
    ingress {
        description     = "Allow traffic from application layer"
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = [aws_security_group.webserver_sg.id]
    }
    tags = {
        Name = "Database SG"
    }
}