# AWS Infrastructure for Blockchain type 2 VPC:

- VPC
- Internet Gateway
- Nat Gateway
- Routing Tables
- Public & Private Subnets
- Web Server
- Database Server

# Notes
- add a terraform.tfvars file with secrets and required file locations
- Keep these secrets in  a key vault and NEVER commit to a repo
- run 'terraform init'
- run 'terraform plan' to check everything look ok
