pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'Maven') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'Maven') {
                    sh 'mvn test'
                }
            }
        }
stage ('Deployment Stage') 
            {
                  ftpPublisher alwaysPublishFromMaster: false, continueOnError: false, failOnError: false, publishers: [[configName: 'gss', transfers: [[asciiMode: false, cleanRemote: false, excludes: '', flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'target', sourceFiles: '**/*.war']], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false]]
                }
            
        }
    }
}
