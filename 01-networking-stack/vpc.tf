resource "aws_vpc" "this" {
  cidr_block = var.vpc.cidr_block

  tags = { Name = "${terraform.workspace}-${var.vpc.name}" }
}
