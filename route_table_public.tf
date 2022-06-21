# Creating Route Table
resource "aws_route_table" "subnet_route_table" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
        Name = "Public_Subnet"
    }
}

# Associating Route Table
resource "aws_route_table_association" "subnet_a_route_table_association" {
    subnet_id      = aws_subnet.subnet_a.id
    route_table_id = aws_route_table.subnet_route_table.id
}
