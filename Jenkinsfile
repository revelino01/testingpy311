node {    
      def app     
      stage('Clone repository') {               
            checkout scm    
      }     
      stage('Build image') {         
            app = docker.build("revelino25/py311testing")    
       }       
       stage('Push image') {
            docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-creds') {            
                app.push("${env.BUILD_NUMBER}")            
                app.push("latest")        
              }    
           }
}