provider "aws" {
  region = var.region
}

resource "aws_eks_cluster" "loja_veloz" {
  name     = "loja-veloz-cluster"
  role_arn = "arn:aws:iam::123456789012:role/eksRole"
}
