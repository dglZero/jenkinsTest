pipeline {
    agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'cd ../..'
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }

    stages {
           stage('Deliver') {
                steps {
    	sh 'chmod 777 build.sh'
                    sh './build.sh'
                }
            }
        }

}