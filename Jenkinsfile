node{
   stage('SCM Checkout'){
     git 'https://github.com/vimalprasathr/helloworld-java-mvn.git'
   }
   stage('Compile-Package'){
      // Get maven home path
      def mvnHome =  tool name: 'Maven', type: 'maven'   
      sh "/var/jenkins_home/tools/hudson.tasks.Maven_MavenInstallation/Maven/bin/mvn -f pom.xml clean install package"
   }
   stage('Deploy to Tomcat'){
      
      sshPublisher alwaysPublishFromMaster: true, continueOnError: true, failOnError: true, publishers: [sshPublisherDesc(configName: '192.168.2.36', sshCredentials: [encryptedPassphrase: '{AQAAABAAAAAQvcHNfQ9cZHFEti7nmOQ74pbgY0T4Yjpo4wxvdWh+GQY=}', key: '', keyPath: '', username: 'root'], transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'target', sourceFiles: '**/*.war\'')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)]
   }
   
    stage('Email Notification'){
      mail bcc: '', body: '''Hi Welcome to jenkins email alerts
      Thanks
      Vimal''', cc: '', from: '', replyTo: '', subject: 'Jenkins Job', to: 'vprasath27@gmail.com'
   }
  
}
