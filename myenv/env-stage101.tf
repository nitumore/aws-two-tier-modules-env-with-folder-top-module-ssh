module "stage101" {
  
  source                 = "git::ssh://nitumore@github.com/aws-innermodule.git"
  cidr_block             = "10.0.0.0/16"
  vpc_id                 = module.stage101.vpc_id
  subnet_cidr            = "10.0.1.0/24"
  route_table_id         = module.stage101.route_table_id
  ig_id                  = module.stage101.ig_id
  instance_type          = "t2.micro"
  subnet_id              = module.stage101.subnet_id
  #key_id                 = module.stage101.key_id
  vpc_security_group_ids = module.stage101.vpc_security_group_ids
  environment            = "stage101"
  aws_region             = "us-west-1"
}


#module "aks-module" {
#  source       = "git::ssh://github.com:sam-cogan/terraform-samcogan-aks.git"
#  cluster_name = "AKS001"
#  regions      = ["WESTEUROPE", "NORTHEUROPE"]
#}
# git@github.com:nitumore/aws-innermodule.git
# working source  = "git@github.com:nitumore/aws-innermodule.git"
# replaced 
# source                 =  "git::https://abc123:d2f9f48a3f77f307494f3e185664016b81778bed@github.com/nitumore/aws-innermodule.git" 

