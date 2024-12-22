resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.VPC1.id
}
