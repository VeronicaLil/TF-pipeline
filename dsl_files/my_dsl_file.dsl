pipelineJob('my-pipeline') {
    definition {
        cpsScm {
            lightweight(lightweight=true)
            scm {
                git {
                    remote {
                        github('VeronicaLil/TF-pipeline')
                    }
                }

                gitSCM {
                    branches {
                        branchSpec {
                            name("main")
                        }
                    }
            }

            scriptPath('../Jenkinsfile')
        }
    }
}
