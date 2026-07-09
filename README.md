# Terraform Modules - EC2 Instance Deployment

## Overview

To improve code reusability and maintainability, the Terraform configuration was modularized by creating a reusable EC2 module. Instead of defining AWS resources directly in the root configuration, the EC2 instance configuration was moved into a separate module and invoked from the main Terraform file.

---

## Project Structure

```text
modules/
├── ec2_instance/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
└── main.tf
```

---

## Root Module (`modules/main.tf`)

The root module acts as the entry point of the project. It configures the AWS provider and calls the reusable EC2 module by passing the required input variables such as the AMI ID, instance type, and subnet ID.

### Responsibilities

- Configure the AWS Provider.
- Call the reusable EC2 module.
- Pass environment-specific values to the module.


<img width="573" height="178" alt="image" src="https://github.com/user-attachments/assets/1922f655-1688-4c12-824c-17664a1f8b35" />


---

## EC2 Module (`modules/ec2_instance/main.tf`)

A reusable Terraform module was created to provision an EC2 instance. Instead of hardcoding values, the module accepts input variables, making it flexible and reusable across different environments.

The module provisions:

- EC2 Instance
- Public IP Association
- Configurable AMI
- Configurable Instance Type
- Configurable Subnet

<img width="639" height="178" alt="image" src="https://github.com/user-attachments/assets/b3440d71-5610-4962-91b1-c5c07bf785dc" />


---

## Variables

The module uses input variables defined in `variables.tf` to make the infrastructure configurable.

The following variables are defined:

- **ami_value** – Specifies the Amazon Machine Image (AMI) ID.
- **instance_type_value** – Defines the EC2 instance type.
- **subnet_id_value** – Specifies the subnet where the EC2 instance will be launched.

Using variables improves code flexibility and enables the same module to be reused with different configurations.

<img width="591" height="196" alt="image" src="https://github.com/user-attachments/assets/6b5cbcf0-2324-440b-ae73-296714d17dfa" />


---

## Outputs

The `outputs.tf` file is used to expose important resource information after deployment, such as:

- EC2 Instance ID
- Public IP Address
- Availability Zone

These outputs can be referenced by other Terraform modules or displayed after the deployment completes.

<img width="569" height="72" alt="image" src="https://github.com/user-attachments/assets/81ab0c2f-5c19-4fc6-9424-baff6a874e47" />


---

## Benefits of Using Modules

- Improves code reusability.
- Reduces code duplication.
- Simplifies infrastructure management.
- Makes Terraform configurations modular and easier to maintain.
- Enables the same infrastructure to be deployed across multiple environments using different input values.
