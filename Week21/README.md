1. Create a highly available two-tier AWS architecture containing the following:
   1. 3 Public Subnets
   2. 3 Private Subnets
   3. 1 Bastion Host in a public subnet
   4. Auto Scaling Group for Web Server (in private subnets)
   5. Internet-facing Application Load Balancer targeting Web Server Auto Scaling Group
2. Deploy this using Terraform Cloud as a CI/CD tool to check your build.
3. Use module blocks for ease of use and re-usability.

NOTE: all code should be in module blocks, not resource blocks

1. Deploy this using Terraform Cloud as a CI/CD tool to check your build.

Yes we know you have not used Terraform Cloud but this is a real world scenario where you will be faced with using a tool you are not too familiar with.

NOTE: DO NOT FORGET TO SET YOUR  ACCESS KEY, SECRET ACCESS KEY AND REGION ENVIRONMENT VARIABLES IN TERRAFORM CLOUD

Good Luck
