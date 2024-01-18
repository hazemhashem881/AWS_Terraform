module "network" {
  source = "./network"
  cidr = var.cidr
  public_subnet_cidr_1=var.public_subnet_1_cidr
  public_subnet_cidr_2=var.public_subnet_2_cidr
  private_subnet_cidr_1=var.private_subnet_1_cidr
  private_subnet_cidr_2=var.private_subnet_2_cidr
  availability_zone_a=var.availability_zone_a
  availability_zone_b=var.availability_zone_b
}


module "eks" {
   source = "./eks"
   vpc_id = module.network.vpc_id
   public_subnet_id_1= module.network.public_subnet_id_1
   public_subnet_id_2 = module.network.public_subnet_id_2
   private_subnet_id_1 = module.network.private_subnet_id_1
   private_subnet_id_2 = module.network.private_subnet_id_2
   


  ssh_key = var.ssh_key
}