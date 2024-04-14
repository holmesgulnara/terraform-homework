To run and create the resources in this folder Homework6 create:
 1. Create 4 tfvars files for 4 US regions 
 2. Use workspace to create instance in all 4 regions.
 3. Create manually S3 bucket named 'kaizen-bucket-hw6' to send and keep the region specific (in this case) state files
 4. Create a DynamoDb (pre-configured) table named 'lock-state' and with particion key name "LockID'

 EX:
 virginia.tfvars:
 ec2_details = [ { ec2_type = "t2.micro", region = "us-east-1", name = "Ubuntu"} ]

 ohio.tfvars:
 ec2_details = [ { ec2_type = "t2.micro", region = "us-east-2", name = "Ubuntu"} ]

 oregon.tfvars:
 ec2_details = [ { ec2_type = "t2.micro", region = "us-west-2", name = "Ubuntu"} ]

 california.tfvars:
 ec2_details = [ { ec2_type = "t2.micro", region = "us-west-1", name = "Ubuntu"} ]
