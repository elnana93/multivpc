

resource "aws_subnet" "app1_subnets" {

  for_each = var.app1_subnets

  vpc_id            = aws_vpc.vpc["app1"].id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az

  map_public_ip_on_launch = each.value.is_public

  tags = {
    Name = "app1-${each.key}"

    Network = each.value.is_public ? "Public" : "Private"
  }
}

resource "aws_subnet" "private1_subnets" {

  for_each = var.private1_subnets

  vpc_id            = aws_vpc.vpc["private1"].id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az

  map_public_ip_on_launch = each.value.is_public

  tags = {
    Name = "private1-${each.key}"

    Network = each.value.is_public ? "Public" : "Private"
  }
}

resource "aws_subnet" "security1_subnets" {

  for_each = var.security1_subnets

  vpc_id            = aws_vpc.vpc["security1"].id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az

  map_public_ip_on_launch = each.value.is_public

  tags = {
    Name = "security1-${each.key}"

    Network = each.value.is_public ? "Public" : "Private"
  }
}


resource "aws_subnet" "shared1_subnets" {

  for_each = var.shared1_subnets

  vpc_id            = aws_vpc.vpc["shared1"].id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az

  map_public_ip_on_launch = each.value.is_public

  tags = {
    Name = "shared1-${each.key}"

    Network = each.value.is_public ? "Public" : "Private"
  }
}