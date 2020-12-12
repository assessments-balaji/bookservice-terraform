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

## Jenkins

1. ec2-key.pem will be created in app-infra folder.
2. ```bash
    $ chmod 400 ec2-key.pem
    $ ssh -i ec2-key.pem -t ec2-user@<jenkins_ip> sudo cat /var/lib/jenkins/secrets/initialAdminPassword
    ```
3. Get password from above command and login into jenkins at http://<jenkins_ip>:8080/ and set up a user.

4. Install the following plugins.
    1. docker plugin
    2. docker pipeline plugin
    3. Node js plugin
    4. generic webhook trigger plugin
5. Set up NodeJs in global tool configuration with name 'nodejs'.
6. Add aws access key and secret key used to run terraform as username password credentials in jenkins with credentials id 'aws-credentials-id'.
7. Create 3 jenkins jobs (pipeline jobs) for the following three repositories and enable generic webhook trigger.
    1. https://github.com/assessments-balaji/bookshelfservice.git
    2. https://github.com/assessments-balaji/bookservice.git
    3. https://github.com/assessments-balaji/bookui.git
    4. Add a parameter in each of the jobs called CLUSTER_NAME and set its value to the created eks cluster name (can be obtained from terraform outputs)
8. Update jenkins webhook url in the three github repos with generic webhook tokens configured in each of the jenkins jobs.
