node{
   stage('SCM Checkout'){
     git 'https://github.com/vimalprasathr/helloworld-java-mvn.git'
   }
   stage('Compile-Package'){
      // Get maven home path
      def mvnHome =  tool name: 'Maven', type: 'maven'   
      sh "clean install package"
   }
   stage('Deploy to Tomcat'){
      
      sshagent(['tomcat-dev']) {
         sh 'scp -o StrictHostKeyChecking=no target/*.war root@192.168.2.36:/opt/'
      }
   }
  
}
