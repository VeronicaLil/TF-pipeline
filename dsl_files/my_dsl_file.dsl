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
            scriptPath('TF-pipeline/Jenkinsfile')
        }
    }
}