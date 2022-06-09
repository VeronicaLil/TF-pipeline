pipeline {
    agent any

    tools {
        terraform 'terraform-12'
    }

    stages {
        stage ("Git checkout") {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/VeronicaLil/TF-pipeline']]])
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