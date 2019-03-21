pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'Maven') {
                    sh '/var/jenkins_home/tools/hudson.tasks.Maven_MavenInstallation/Maven/bin/mvn -f pom.xml clean install package'
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
        
stage('Deployment Stage'){
      
      sshagent(['tomcat-dev']) {
         sh 'scp -o StrictHostKeyChecking=no target/*.war root@192.168.2.36:/opt/'
      }
   }
   
