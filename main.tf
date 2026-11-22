# module "dev-app" {
#   source="./terraform-multi-env-project"
#   my-Environment="dev"
#   instance_type="t2.micro"
#   ami_id="ami-0331e43da0c1f186e"
# }

# module "prd-app" {
#   source="./terraform-multi-env-project"
#   my-Environment="prod"
#   instance_type="t2.medium"
#   ami_id="ami-09a2f74ce8538e414"
# }

# module "test-app" {
#   source="./terraform-multi-env-project"
#   my-Environment="test"
#   instance_type="t2.large"
#   ami_id="ami-09c2df4695b7bd4d0"
# }