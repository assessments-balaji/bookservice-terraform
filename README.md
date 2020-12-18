# Instructions

## Infra

1. AWS credentials configured
2. ```bash
    git clone https://github.com/assessments-balaji/bookservice-terraform.git
    cd bookservice-terraform/global
    terraform init
    terraform apply
    cd ../app-infra
    terraform init
    terraform apply
    ```
3. `aws eks --region ap-south-1 update-kubeconfig --name <cluster_name>`

4. `kubectl create namespace bookshelf-system`

## Codepipeline config

** Prerequisite: configure github-connection in codepipeline settings for assessment-balaji organization.

1. Codepipeline set up for bookservice

```bash
$ https://github.com/assessments-balaji/bookservice.git
$ cd bookservice/terraform
$ terraform init
$ terraform apply -var="account_id=<AWS_ACCOUNT_ID>" -var="cluster_name=<EKS_CLUSTER_NAME>" -var="github_token=<GITHUB_PERSONAL_ACCESS_TOKEN>" -var="access_key=<AWS_ACCESS_KEY>" -var="secret_key=<AWS_SECRET_KEY>"
```


2. Codepipeline set up for bookshelfservice

```bash
$ https://github.com/assessments-balaji/bookshelfservice.git
$ cd bookservice/terraform
$ terraform init
$ terraform apply -var="account_id=<AWS_ACCOUNT_ID>" -var="cluster_name=<EKS_CLUSTER_NAME>" -var="github_token=<GITHUB_PERSONAL_ACCESS_TOKEN>" -var="access_key=<AWS_ACCESS_KEY>" -var="secret_key=<AWS_SECRET_KEY>"
```


1. Codepipeline set up for bookui

```bash
$ https://github.com/assessments-balaji/bookui.git
$ cd bookservice/terraform
$ terraform init
$ terraform apply -var="account_id=<AWS_ACCOUNT_ID>" -var="cluster_name=<EKS_CLUSTER_NAME>" -var="github_token=<GITHUB_PERSONAL_ACCESS_TOKEN>" -var="access_key=<AWS_ACCESS_KEY>" -var="secret_key=<AWS_SECRET_KEY>"
```
