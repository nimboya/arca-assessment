import boto3.ec2
from botocore.exceptions import ClientError

ec2 = boto3.client('ec2')

try:
    instanceid =''
    response = ec2.start_instances(InstanceIds=instanceid, DryRun=False)
    print(response)
except ClientError as e:
    print(e)