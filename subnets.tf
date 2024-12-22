resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.VPC1.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true
}