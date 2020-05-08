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
       stage('Deliver') { 
            steps {
	sh 'pwd'
	sh 'cd /var/jenkins_home/workspace/TestPipine'
	sh 'chmod 777 build.sh'
                sh './build.sh' 
            }
        }
    }
}