pipeline {
    agent { label "JDK-11" }
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
                sh 'terraform destroy --auto-approve'
            }
        }
    }
    }
