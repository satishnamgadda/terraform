pipeline {
    agent { label "JDK11" }
    stages {
        stage('vcs') {
            steps {
                git url: "https://github.com/satishnamgadda/terraform.git",
                    branch: "main"
            }
        }
        stage('Terraform init') {
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps{
                sh 'terraform apply -var-file="dev.tfvars" -auto-approve'
            }
        }
    }
    }
