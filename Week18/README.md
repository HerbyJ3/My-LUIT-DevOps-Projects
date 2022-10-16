Your team needs you to diagram and deploy a two-tier architecture for your company. For the Foundational project you are allowed to have all your code in a single main.tf file (known as a monolith) with hardcoded data.

1. Deploy a VPC with CIDR 10.0.0.0/16 with 2 public subnets with CIDR 10.0.1.0/24 and 10.0.2.0/24. Each public subnet should be in a different AZ for high availability.
2. Create 2 private subnet with CIDR '10.0.3.0/24' and '10.0.4.0/24' with an RDS MySQL instance (micro) in one of the subnets. Each private subnet should be in a different AZ.
3. A load balancer that will direct traffic to the public subnets.
4. Deploy 1 EC2 t2.micro instance in each public subnet.

ADVANCED
1. Add a variables.tf file and make sure nothing is hardcoded in your main.tf. 
2. Use count to reduce the number of resource blocks for your public subnets and your ec2 instances. Reference: https://www.terraform.io/language/meta-arguments/count
3. Create separate files for your providers.tf if you have not already.

COMPLEX
Use modules instead of a single main.tf with all your resources.
