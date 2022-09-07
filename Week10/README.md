🎓Week 8 Project Instructions

**Web Tier**
1. 2 public subnets
2. Minimum of 2 EC2 instances with an OS of your choice (free tier) in an Auto Scaling Group.
3. EC2 Web Server Security Group allowing inbound permission from the internet.
4. Boot strap static web page or create a custom AMI that already includes the static web page.
5. Create a public route table and associate the 2 public subnets.

**Application Tier**
1. 2 private subnets
2. Minimum of 2 EC2 instances with an OS of your choice (free tier) in an Auto Scaling Group.
3. EC2 Application Server Security Group allowing inbound permission from the Web Server Security Group.
4. Associate with private route table.
Note: This is not a true application tier as we don't have any provided code to run on the EC2 instances.

**Database Tier**
1. Use a free Tier MySql RDS Database.
2. The Database Security Group should allow inbound traffic for MySQL from the Application Server Security Group. 
3. 2 private subnets. 
4. Associate with private route table.
Note: No need to use Multi-AZ but be sure to document how you would add it

Considerations:
1) You will need to configure a public route table along with private route tables. 
2) You will need a Nat Gateway in one of your public subnets to allow your instances in private subnets to update packages and patches. Make sure to include this in the private route table. 
3) In order to reach your EC2 instances in the private subnets, you will either need a bastion host in the public subnet or need to use SSM. You will need to research into both to see which works better for your use case.
4) Plan out your CIDRs before you create your VPC and Subnets
