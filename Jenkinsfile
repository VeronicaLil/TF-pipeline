pipeline {
    agent any

    tools {
        terraform 'terraform'
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
        
        stage ("Terraform plan") {
            steps {
                sh'''
                terraform plan -no-color > plan.txt
                '''
            }
        }
    }
}
