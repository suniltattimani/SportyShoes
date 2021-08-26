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
            script {
                pwd
                echo "Building DOcker image"
                docker build -t jenkins-image .
                if ($? -ne 0)
                    echo "Docker image creation failed"
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
