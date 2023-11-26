module "network" {
  source = "./network"
  cidr = var.cidr
  public_subnet_cidr_1=var.public_subnet_1_cidr
  public_subnet_cidr_2=var.public_subnet_2_cidr
  private_subnet_cidr_1=var.private_subnet_1_cidr
  private_subnet_cidr_2=var.private_subnet_2_cidr
}