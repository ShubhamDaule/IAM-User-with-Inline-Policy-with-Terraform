# IAM-User-with-Inline-Policy-with-Terraform

This Terraform project demonstrates how to create an IAM user in AWS, give the user programmatic access by generating an access key, and attach an inline policy to the user with specific permissions. The inline policy grants the IAM user access to perform certain actions on Amazon S3, including `Get*`, `List*`, and `s3-object-lambda` actions.

## Prerequisites
Before using this Terraform project, ensure you have the following prerequisites set up:

- An AWS account with appropriate credentials and permissions to create IAM users, policies, and access keys.
- Terraform installed on your local machine. You can download it from the Terraform website and follow the installation instructions for your operating system.
- A valid AWS profile with sufficient IAM permissions configured on your machine.


## Usage
- Clone this repository to your local machine.
- Make sure you have your AWS credentials configured properly on your machine. Depending on your setup, you can use environment variables or AWS CLI configuration.
- Navigate to the project directory in your terminal.

### Initialize Terraform
Before applying the Terraform configuration, you need to initialize the Terraform providers used in the project. Run the following command to initialize:

```
terraform init
```

### Configure the IAM User and Policy
The `main.tf` file contains the Terraform configuration to create the IAM user, generate an access key for the user, and attach an inline policy with specific permissions for S3 operations.

You can modify the following attributes in the main.tf file to customize the IAM user and the permissions granted by the policy:

- `name`: The name of the IAM user to be created.
- `actions`: The list of S3 actions that the policy allows. You can modify this list based on the desired permissions for the IAM user.
- `resources`: The list of resources the policy grants access to. In this example, the policy allows access to all resources ("*"). You can specify specific S3 bucket ARNs here.


### Apply the Configuration
To create the IAM user and attach the inline policy, run the following Terraform commands:

```
terraform plan
terraform apply
```

Terraform will show you a summary of the changes it will apply. Review the output and type yes when prompted to proceed with the deployment.

The Terraform script will create the IAM user, generate an access key for the user, and attach the inline policy with the specified permissions for S3 actions.

### Clean Up
To remove the IAM user and the attached policy, run the following Terraform command:

```
terraform destroy
```

Terraform will show you a summary of the resources it will delete. Review the output and type yes when prompted to proceed with the deletion.

Please note that this will remove the IAM user, the access key, and the inline policy associated with the IAM user. Be cautious when using this command as it can result in the loss of access for the IAM user.

## Security Considerations
IAM users with access keys possess powerful credentials that grant access to your AWS resources. Ensure that you follow security best practices and restrict permissions to only the necessary actions and resources required for the user's tasks.

## License
This project is licensed under the MIT License. Feel free to modify and use it according to your needs.

## Acknowledgments
This project was created to demonstrate the use of Terraform to manage IAM users and policies. If you have any suggestions or improvements, feel free to contribute to this repository. Happy managing your IAM users securely with Terraform! 🛡️