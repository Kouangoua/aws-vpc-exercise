### Additional steps to take if going to production:
    1. For production grade we will push the terraform code to a SCM and provision the infrastructure through a pipeline.
    2. We would add a backend.tf to create a S3 backend and dynamodb for (state locking / remote state storage) to prevent data inconsistency working in collaboration with the team.
    3. We will ensure one state per environment.
    4. For a different environment we need to specify a different tfvars to defined different variables.
    
## Terraform workflow commands for project:
Terraform Workflow
terraform init
terraform validate
terraform plan
  **Append the following or any terraform workflow with the flag (-auto-approve -var-file="prod.auto.tfvars) if you run into any issues.
  For example:
terraform apply -auto-approve -var-file="default.tfvars"