module "stage101" {
                             
  #source                 = "git@bitbucket.org:accurics/aws-innermodule.git"
  source                = "git::https://x-token-auth:xVKfETb0oBz2jHSsoITVMY279_U7Wwva3F8esPm3mxzQMvF65tXGOR4VAMds32Gpjfrm28r2JcrRRKvVWc1zyF1rcfqDRt1JE-z3F6Rv4fCaJPsTK-phRu1U@bitbucket.org:accurics/aws-innermodule.git"
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
