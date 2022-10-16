ADVANCED :
1) Create a SNS topic using Python.
2) Use an email to subscribe to the SNS topic.
3) Create a Lambda function with a Python 3.7 or higher runtime 
4) Modify the Lambda to trigger when new messages arrive in the SQS queue you created earlier.
5) The Lambda should publish the SQS message that triggered it to the SNS topic.
6) Validate the entire architecture works by triggering the API you created earlier. You should receive the notification from the SNS subscription.
