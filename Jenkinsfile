pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'SECONDS')
    }
    stages {
        stage{'clone repo'}{
            checkout scm
        }
        stage('build stage'){
            app = docker.build("revelino01/testingpy11")
        }
        stage('test image'){
            app.inside{
                sh 'its running'
            }
        }
        stage('push image'){
            docker.withRegistry('https://registry.hub.docker.com','docker-hub-creds'){
                app.push("${env.BUILD_NUMBER}")
                app.push("latest")
            }
        }
    }
}

