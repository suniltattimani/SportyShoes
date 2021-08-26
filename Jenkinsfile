pipeline {
  
  agent any
  
  stages {
    stage ( "Build") {
// Step is for building the application
      
      steps {
        echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
        echo 'Building the application...'
      }
    } 

    stage ("Creating docker image of Java app") {
        
	steps {

         sh "pwd"
	 sh "docker -t java_app Dockerfile"
         if ($? -ne 0) {
	     print "Docker image creation  failed"
         }
      
       }
   } 
    
    stage ("Deploying the java app") {
  
      steps {
        
          sh "docker run -t -p 8080:80 java_app"
      }
      
     }
  
   }
    
}
