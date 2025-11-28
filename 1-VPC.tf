
resource "aws_vpc" "vpc" {
  for_each   = var.vpcs
  cidr_block = each.value.cidr_block
  tags       = each.value.tags
}


output "vpc_ids" {
  description = "A map of VPC names to their IDs."
  value = {
    app1_id      = aws_vpc.vpc["app1"].id
    private1_id  = aws_vpc.vpc["private1"].id
    security1_id = aws_vpc.vpc["security1"].id
  }
}


