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
        
        stage ("Push in repo") {
            steps {
                sshagent(['my-ssh-key']) {
                    sh'''
                    git checkout main
                    git remote set-url origin git@github.com:VeronicaLil/TF-pipeline.git
                    git config --global user.email "veronicalillocci@gmail.com"
                    git config --global user.name "VeronicaLil"
                    git add .
                    git commit -m "new tf plan"
                    git push https://github.com/VeronicaLil/TF-pipeline.git
                    '''
                }
            }
        }
    }
}
