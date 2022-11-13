#1Create instance profile to attach role
aws iam create-instance-profile --instance-profile-name Dynamoread

#2Attach role to instance profile
aws iam add-role-to-instance-profile --role-name DynamoDB-Read-Only --instance-profile-name Dynamoread

#3 Check status of instance profile to confirm attachment
aws iam get-instance-profile  --instance-profile-name Webdynamo

#4 Create Instance
aws ec2 run-instances --image-id ami-0022f774911c1d690 \
--count 1 \
--instance-type t2.micro \
--key-name VirginiaKey \
--security-group-id sg-eae930c2 \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Dynamotest}]'

#5Check Instance
aws ec2 describe-instances

#6 Add instance profile to a running EC2
aws ec2 associate-iam-instance-profile --instance-id i-012cf0787d603879d --iam-instance-profile Name=Dynamoread

#6 Confirms instance profile associations with EC2
aws ec2 describe-iam-instance-profile-associations

#7 Create DynamoDB table
aws dynamodb create-table --table-name Favorite_Games --attribute-definitions AttributeName=Game_Title,AttributeType=S --key-schema AttributeName=Game_Title,KeyType=HASH --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

#8 Create 10 items
aws dynamodb batch-write-item --request-items file://gameitems2.json --return-consumed-capacity INDEXES --return-item-collection-metrics SIZE

#9 SSH into your EC2 and scan the for a DB table
aws dynamodb scan --table-name Favorite_Games --region us-east-1

#10 To confirm IAM role attempt to write an item to the DB table
aws dynamodb put-item --table-name Favorite_Games --item '{"Game_Title": {"S": "JAM"}}' --return-consumed-capacity TOTAL

#Powershell
aws dynamodb put-item --table-name Favorite_Games --item '{\"Game_Title\": {\"S\": \"JAM\"}}' --return-consumed-capacity TOTAL

#11 Delete Resources
aws dynamodb delete-table --table-name Favorite_Games
aws ec2 terminate-instances --instance-ids i-00e87c1d4bffe4d68

aws iam remove-role-from-instance-profile --role-name DynamoDB-Read-Only --instance-profile-name Dynamoread

