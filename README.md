# Terraform Zero to Hero course

## Day 1: Getting Started with Terraform

#### Introduction to Terraform and IaC

In this session, we'll introduce you to the fundamental concepts of Terraform and Infrastructure as Code (IaC). Learn why Terraform is crucial for managing infrastructure and how IaC streamlines provisioning.

#### Installing Terraform on MacOS, Linux and Windows

Get your hands dirty by installing Terraform on both MacOS, Linux and Windows. We'll guide you through the process with clear instructions and commands.

#### Setting up Terraform for AWS

Dive into AWS integration with Terraform. You'll learn how to set up your AWS credentials and configure the AWS provider within Terraform to start provisioning resources.

#### Writing Your First Terraform Code

Start writing actual Terraform code with a simple example. Learn about the basic structure of a Terraform configuration file and how to define resources using the HCL language.

### Terraform Lifecycle

Understand the lifecycle of terraform. What is terraform `init`, `plan` and `apply`.

#### Launching an EC2 Instance

Take your skills up a notch by provisioning an EC2 instance on AWS using Terraform. Explore attributes like instance type, AMI, and tags to customize your instance.

#### Terraform State Basics

Understand the importance of Terraform state files. Learn about desired and current states, and how Terraform manages these states to ensure infrastructure consistency.

## Day 2: Advanced Terraform Configuration

#### Understanding Providers and Resources

Deepen your knowledge of providers and resources. Explore the role of different providers for various cloud platforms and understand how resources define infrastructure components.

#### Variables and Outputs in Terraform

Discover the power of variables for dynamic configurations. Learn how to define, declare, and utilize variables effectively. Explore outputs to retrieve and display essential information.

#### Conditional Expressions and Functions

Elevate your configurations with conditional expressions, adding logic to your code. We'll introduce you to Terraform's built-in functions for tasks like string manipulation and calculations.

#### Debugging and Formatting Terraform Files

Master the art of debugging Terraform configurations.Plus, learn why proper formatting with terraform fmt is crucial.

## Day 3: Building Reusable Infrastructure with Modules

#### Creating Modular Infrastructure with Terraform Modules

Unlock the potential of reusability with Terraform modules. Understand how modules enable you to create shareable and organized infrastructure components.

#### Local Values and Data Sources

Simplify complex expressions using local values. Dive into data sources and learn how to fetch data from existing resources or external systems, enhancing your configurations' flexibility.

#### Using Variables and Inputs with Modules

Explore the versatility of using variables within modules to customize their behavior. Learn how inputs work within modules and the benefits they offer.

#### Leveraging Outputs from Modules

Utilize module outputs to access critical information or propagate data to your root configuration. Learn how to make your modules more informative and useful.

#### Exploring Terraform Registry for Modules

Embark on a journey through the Terraform Registry. Discover pre-built, community-contributed modules and learn how to incorporate them into your own configurations.

## Day 4: Collaboration and State Management

#### Collaborating with Git and Version Control

Collaborate effectively using Git and version control. Grasp fundamental Git commands such as cloning, pulling, and pushing repositories to enhance teamwork.

#### Handling Sensitive Data and .gitignore

Tackle security challenges associated with sensitive data in version control. Explore the importance of .gitignore to exclude sensitive files from being committed.

#### Introduction to Terraform Backends

Uncover the role of Terraform backends in remote state storage. Learn why they're essential for maintaining infrastructure state and configurations.

#### Implementing S3 Backend for State Storage

Get hands-on experience configuring an S3 bucket as a backend for remote state storage. Understand how this setup improves collaboration and state management.

#### State Locking with DynamoDB

Dive into state locking and the prevention of concurrent updates. Implement state locking using DynamoDB as a backend mechanism, ensuring state consistency.

## Day 5: Provisioning and Provisioners

#### Understanding Provisioners in Terraform

Learn about provisioners, mechanisms for executing actions on resources during creation and destruction. Understand how they facilitate customization.

#### Remote-exec and Local-exec Provisioners

Differentiate between remote-exec and local-exec provisioners. Explore how remote-exec provisions actions on remote servers, while local-exec performs tasks locally.

#### Applying Provisioners at Creation and Destruction 

Discover when to use provisioners during resource creation or destruction. Configure provisioners within resource blocks to execute specific actions.

#### Failure Handling for Provisioners

Gain insights into handling provisioner failures. Learn about retry mechanisms, timeouts, and the on_failure attribute to control provisioner behavior on failure.

## Day 6: Managing Environments with Workspaces

#### Introduction to Terraform Workspaces

Understand the concept of workspaces and their role in managing different environments. Learn how workspaces aid in isolating configurations.

#### Creating and Switching Between Workspaces

Learn how to create new workspaces and switch between them using terraform workspace commands. Understand their significance in environment management.

#### Using Workspaces for Environment Management

Learn deeper into how workspaces streamline environment management. Comprehend their benefits in maintaining separate state files for various settings.

## Day 7: Security and Advanced Topics

#### HashiCorp Vault Overview

Gain an overview of HashiCorp Vault, a powerful tool for secret management and data protection. Understand its significance in maintaining secure configurations.

#### Integrating Terraform with Vault for Secrets

Learn how to integrate Terraform with Vault to manage sensitive data securely. Discover how Vault can be used to store and distribute secrets within configurations.
