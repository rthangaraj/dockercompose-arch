pipeline {
    agent any
    
    tools {
        terraform 'terraform'
    }

    stages {
        stage('Git checkout') {
            steps {
                git credentialsId: 'jenkins-slave', url: 'https://github.com/rthangaraj/dockercompose-arch.git'
            }
        }
    
        stage('Terraform init') {
            steps {
                sh label: '', script: 'pwd' 
                sh label: '', script: 'cd /var/lib/jenkins/workspace/terraformscript/azure-dep-tf'
                sh label: '', script: 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
    }
}
