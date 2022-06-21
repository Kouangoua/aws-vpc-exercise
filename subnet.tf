#Creating public subnet
resource "aws_subnet" "subnet_a" {
    vpc_id            = aws_vpc.vpc.id
    cidr_block        = var.subnet_cidr_a
    availability_zone = "${var.region}a"

    tags = {
        Name = "subnet_a"
    }
}

#Creating private subnet
resource "aws_subnet" "subnet_b" {
    vpc_id            = aws_vpc.vpc.id
    cidr_block        = var.subnet_cidr_b
    availability_zone = "${var.region}b"

    tags = {
        Name = "subnet_b"
    }
}

#Creating private database subnet
resource "aws_subnet" "subnet_c" { 
    vpc_id            = aws_vpc.vpc.id
    cidr_block        = var.subnet_cidr_c
    availability_zone = "${var.region}c"

    tags = {
        Name = "subnet_c"
    }
}

