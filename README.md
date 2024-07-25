# 🚀 EKS Cluster Terraform CI/CD

## 📚 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Folder Structure](#folder-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Terraform Cloud](#Terraform-Cloud)
- [Contributing](#contributing)
- [Contact](#contact)

## 🌟 Overview

This project demonstrates how to deploy an Amazon EKS (Elastic Kubernetes Service) cluster using Terraform Cloud CI/CD. The repository includes all necessary configurations and modules to create and manage the EKS cluster efficiently.

## ✨ Features

- Create an EKS cluster with a capacity of 2 nodes.
- Generate a random string to build the cluster name.
- Output the cluster name and the IP address of the containers in the cluster.
- Modularized code structure for better organization and reuse.

## 📂 Folder Structure

```
eks-cluster-terraform-cicd/
│
├── .terraform/
│
├── modules/
│   ├── eks/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   │
│   ├── vpc/
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
│
├── .gitignore
├── .terraform.lock.hcl
├── kubectl.sha256
├── kubernetes.tf
├── main.tf
├── outputs.tf
└── provider.tf
```

## 🚀 Getting Started

### 🛠 Prerequisites

- AWS account
- Terraform & Kubernetes installed on your IDE (e.g., VSCode)
- AWS CLI installed and configured on your IDE

### 📥 Installation

1. Clone the GitHub repository:

    ```bash
    git clone https://github.com/Liquizar/eks-cluster-terraform-cicd.git
    ```

2. Change into the directory:

    ```bash
    cd eks-cluster-terraform-cicd
    ```

## 💻 Usage

1. Initialize the Terraform backend:

    ```bash
    terraform init
    ```

2. Evaluate the Terraform configuration:

    ```bash
    terraform plan
    ```

3. Apply the configuration:

    ```bash
    terraform apply
    ```

4. Retrieve the access credentials for your cluster and configure `kubectl`:

    ```bash
    aws eks update-kubeconfig --name <EKS_CLUSTER_NAME> --region <REGION>
    ```

5. Use `kubectl` commands to manage your cluster and deploy Kubernetes configurations.

## ⚙️ Terraform Cloud

1. Navigate to the Terraform Cloud platform, choose your organization, and create a new workspace.

2. Select the version control workflow option and connect with your GitHub account.

3. Create a new workspace and configure variables:

    - **AWS_ACCESS_KEY_ID**
    - **AWS_SECRET_ACCESS_KEY**
    - **AWS_DEFAULT_REGION**
    - **CONFIRM_DESTROY**

    *Ensure to mark sensitive variables as sensitive.*

4. Start a new run under the Actions tab and proceed with Plan & Apply.

## 🤝 Contributing

Contributions are welcome! Please fork this repository and submit pull requests with your improvements.

## 📧 Contact

For any questions or suggestions, please reach out via GitHub issues.
