
resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
      Name = "main_vpc"
  }
}

resource "aws_subnet" "subnets" {
  count = length(var.subnet_cidrs)
  vpc_id = aws_vpc.main_vpc.id
  availability_zone = var.subnet_azs[count.index]
  cidr_block = var.subnet_cidrs[count.index]

  tags = {
      Name = var.subnet_names[count.index]
  }
}