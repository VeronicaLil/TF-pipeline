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
            scriptPath('declarative-examples/simple-examples/environmentInStage.groovy')
        }
    }
}