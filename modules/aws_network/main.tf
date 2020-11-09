resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.vpc_name}"
    Create_by = "terraform"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_cidr_block
  tags = {
    Name = "${var.subnet_name}"
    Create_by = "terraform"
  }
}
