resource "aws_route_table" "RouteTable" {
  vpc_id = aws_vpc.VPC1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}