# AWS Infrastructure for Blockchain type 2 VPC:

- VPC
- Internet Gateway
- Nat Gateway
- Routing Tables
- Public & Private Subnets
- Web Server
- Database Server
- Miner

# Notes
- add a terraform.tfvars file with secrets and required file locations
- Keep these secrets in  a key vault and NEVER commit to a repo
- run 'terraform init'
- run 'terraform plan' to check everything look ok
- Chef configuration in web-servers.tf MUST be configured by you
  - Comment out this section if don't bootstrap with chef

# Execution
##To guarantee plan and apply are equal:

terraform plan -out example.tfplan
terraform apply example.tfplan

# Output vars

terraform output variable_name