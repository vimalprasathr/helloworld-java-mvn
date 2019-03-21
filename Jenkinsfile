node{
   stage('SCM Checkout'){
     git 'https://github.com/vimalprasathr/helloworld-java-mvn.git'
   }
   stage('Compile-Package'){
      // Get maven home path
      def mvnHome =  tool name: 'Maven', type: 'maven'   
      sh "${mvnHome}/bin/mvn package"
   }
   stage('Deploy to Tomcat'){
      
      sshagent(['tomcat-dev']) {
         sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@172.31.29.242:/opt/tomcat8/webapps/'
      }
   }
  
}
