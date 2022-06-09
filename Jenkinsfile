pipeline {
    agent any

    tools {
        terraform 'terraform-12'
    }

    stages {
        
        stage ("Git checkout") {
            steps {
                sh'''
                git 'https://github.com/VeronicaLil/TF-pipeline'
                '''
            }
        }

        stage ("Terraform init") {
            steps {
                sh'''
                terraform init
                '''
            }
        }

        stage ("Terraform apply") {
            steps {
                sh'''
                terraform apply -auto-approve
                '''
            }
        }
    }
}