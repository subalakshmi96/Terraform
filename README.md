
CREATING AN AWS EC2 INSTANCE WITH TERRAFORM

In this step, Terraform was used to provision an Amazon EC2 instance on AWS. The AWS provider was configured with the us-east-1 region, and an EC2 resource was defined using the aws_instance resource block. The configuration specifies the AMI ID and the t3.micro instance type. After writing the configuration, Terraform commands (terraform init, terraform plan, and terraform apply) were executed to create the EC2 instance automatically.

Terraform Configuration:

main.tf 

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-02b85502867073a"
  instance_type = "t3.micro"
}

<img width="399" height="187" alt="image" src="https://github.com/user-attachments/assets/f87d272e-45bd-4593-a78a-dff421074d8c" />


terraform plan

<img width="1158" height="425" alt="image" src="https://github.com/user-attachments/assets/db263df6-cecf-4744-b21c-304dea536d8f" />

terraform apply

<img width="1123" height="220" alt="image" src="https://github.com/user-attachments/assets/7b5c0fdb-388e-433d-a59e-cbb3a650707e" />


<img width="630" height="325" alt="image" src="https://github.com/user-attachments/assets/bc7ff020-9e1c-4343-b1cc-69d42ed2bbf5" />

OUTPUT

The EC2 instance was successfully created in the us-east-1 region using Terraform. This demonstrates Infrastructure as Code (IaC), where cloud resources are provisioned and managed through configuration files instead of manual operations in the AWS Management Console.

<img width="1160" height="176" alt="image" src="https://github.com/user-attachments/assets/ac904bfd-6ddd-4813-8e8c-3325e3329e89" />
