# Infrastructure deployment 
--------------------------
This repository contains the code to deploy infrastructure into AWS environment. Each type of resource is set up using modules for code reusability.

### Multi environment deployment:
Code repository supports multi evnironment deployments through workspaces. Below workspaces are accepted by the code

1. dev
2. qa
3. prod

terraform_config.tf file can be edited to change the deployment regions.