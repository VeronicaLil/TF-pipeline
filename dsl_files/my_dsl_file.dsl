pipelineJob('my-pipeline') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        github('VeronicaLil/TF-pipeline')
                    }
                }
            }
            scriptPath('//github.com/VeronicaLil/TF-pipeline/blob/main/Jenkinsfile')
        }
    }
}