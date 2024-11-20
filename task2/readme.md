
# Bastion Host Terraform Configuration

## Project Structure
```
.
├── data.tf          # Data sources (AMI lookup)
├── keypair.tf       # SSH key pair generation
├── main.tf          # EC2 instance configuration
├── outputs.tf       # Terraform outputs
├── provider.tf      # AWS provider configuration
├── security_group.tf# Network security group
├── terraform.tfvars # Environment-specific variables
└── variables.tf     # Variable definitions
```

## Prerequisites
- Terraform
- AWS CLI configured
- Existing VPC with public subnet

## Configuration Variables
Modify `terraform.tfvars` with:
```hcl
vpc_id     = "vpc-xxxxxxxx"
subnet_id  = "subnet-xxxxxxxx"
```
## Note
- Customize `allowed_cidr` in `terraform.tfvars` to allow access to bastion from your IP. 

## Deployment Steps
```bash
terraform init
terraform plan
terraform apply
```

## Connecting to Bastion
```bash
ssh -i bastion_host_key.pem ec2-user@<public_ip>
```

## Cleanup
```bash
terraform destroy
```