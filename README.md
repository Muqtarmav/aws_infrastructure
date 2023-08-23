# Terraform Infrastructure Setup For AWS EKS CLUSTER, SQL DB, ECR

**Prerequisites**

An AWS account with necessary permissions to create EKS clusters and related resources.

Terraform installed on your local machine.

**Steps to deploy**

The EKS cluster and nodes, VPC, Subnets configuration are defined in the main.tf file.

The SQL database and ECR are defined in the rds.tf and ecr.tf files respectively.

Configuration File: Create a file named main.tf, ecr.tf, rds.tf and paste the provided Terraform configurations into it.
Initialize Terraform: Open a terminal, navigate to the directory containing main.tf, and run:

$ terraform init

Execute the following commands to preview the changes and apply them:

$ terraform plan
$ terraform apply


**Clean Up**

Execute command to remove the resources and clean up the infrastructure:

$ terraform destroy



