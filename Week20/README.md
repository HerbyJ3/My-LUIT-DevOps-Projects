Your team needs you to create a custom module for ec2 instance with a amazon linux 2 ami ID

1. Fork and clone this repo locally with the [ec2.tf](http://ec2.tf "‌") template as a starting point to create the ec2 : [https://github.com/LevelUpInTech/terraformec2.git](https://github.com/LevelUpInTech/terraformec2.git "‌")
2. Create a custom module for ec2 out of the resource block that you can use as repeatable infrastructure
3. Push the new created module and the [ec2.tf](http://ec2.tf "‌") file to your repo!

Advanced

1. Create a Security Group module that allows for HTTP web access.
2. Assign to the security group to the EC2 module you created in the foundational.
3. Add a bootstrap script to your ec2 module to launch a webserver of your choice (Apache, NGinx, etc).

Complex

1. Add another module for an IAM role that will allow you to list all the S3 buckets while still following the rule of least privilege.
2. Assign the role to your EC2 instance.
3. SSH into your instance and using the CLI confirm you can list your buckets without being able to create a new bucket or put a new object.
4. Consider what changes you need to make to your EC2 and to your Security group to allow this access.

Good Luck
