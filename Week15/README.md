1) Create a Standard SQS Queue using Python.
2) Create a Lambda function in the console with a Python 3.7 or higher runtime 
3) Modify the Lambda to send a message to the SQS queue. Your message should contain either the current time or a random number. You can use the built-in test function for testing.
4) Create an API gateway HTTP API type trigger.
5) Test the trigger to verify the message was sent.

ADVANCED :
1) Create a SNS topic using Python.
2) Use an email to subscribe to the SNS topic.
3) Create a Lambda function with a Python 3.7 or higher runtime 
4) Modify the Lambda to trigger when new messages arrive in the SQS queue you created earlier.
5) The Lambda should publish the SQS message that triggered it to the SNS topic.
6) Validate the entire architecture works by triggering the API you created earlier. You should receive the notification from the SNS subscription.

COMPLEX
1) Create a DynamoDB table using Python.
2) Create a Lambda function with a Python 3.7 or higher runtime 
3) Modify the Lambda to trigger on publishes to the SNS topic from the advanced project.
4) Modify the Lambda to store the output of the SNS topic to the DynamoDB table, along with the date it was posted, and a unique identifier.
