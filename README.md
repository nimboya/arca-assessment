-----------------------------------------------------
Creating EC2 and how to start and stop the instance
-----------------------------------------------------

** For Terraform **
1. Install the Terrform CLI, visit the installation documentation here (https://www.terraform.io/downloads.html), the downloads depends on the operating system (Windows, Linux, Mac OS etc).

1a. Download the Terraform executable file to the Downloads folder and copy it to the Documents folder


2. Navigate to the *terraform-ec2* folder using the Linux `cd` command. 

2b. For the purpose of this demonstration, copy the Terraform executable file into the *terraform-ec2* directory. For production use, the file should be places in a global location so it can be referenced from anywhere in the operating system 

3. Update the *variables.tf* file with the appropriate AWS `access_key` and `secret_key` to give access to the Terraform script

4. Open the Command Prompt/Terminal on the *terraform-ec2* directory and run `terraform init` to initialize and download dependency for the AWS Terraform provider

5. Run `terraform plan` to get a sense of the AWS resources to be provisioned

6. Run `terraform apply` to apply and create the EC2 instance

7. This will create the instance in the default VPC

8. When creation is done. The instance ID will be generated which will be updated in the python script

9. To run the Python script, Navigate to *ec2_start_stop* directory and type `python ec2_start.py` to start the instance and `python ec2_stop.py` to stop the instance


** For CloudFormation **

1. Login to the AWS Console

2. Click on the *Services* menu item on the top menu bar.

3. On the search bar, type `Cloudformation` to filter through the services. Click Cloudformation option that shows up. This will lead to the CloudFormation Console

4. On the CloudFormation Console, click the *Create Stack* button on the top right corner of the screen, it will give a drop-down menu, on the menu, click on *With new resources (standard)*, this is because we are creating new resources

5. On the next screen, Click on the *Upload a template file* under the *Specify template* box.

6. Click the *Choose file* button and select the *ec2.yaml* file contained in the *cloudformation-ec2* directory.

7. Click *Next*

8. Enter the name of the Stack, for example, `simple-ec2`. Click *Next*

9. The next page is about Tags, Permissions and Stack policy. Ignore configurations and Click *Next*

10. Review all the configurations, and click the *Create stack* button to create the instance

11. This will initialize the instance creation process. 

12. When creation is done. The instance ID will be generated which will be updated in the python script

13. To run the Python script, Navigate to *ec2_start_stop* directory and type `python ec2_start.py` to start the instance and `python ec2_stop.py` to stop the instance