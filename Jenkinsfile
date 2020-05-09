pipeline {
    agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker'
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
            sh 'ls  -l'
	sh 'docker build --rm -t demo .'
	sh 'docker run -d ${DNS_STR} -p 8002:8002    --env JAVA_JVM="-Xms500m -Xmx500m" --name=jenkinsTest demo'
	sh 'docker image prune --force'
	sh 'chmod 777 build.sh'
                sh './build.sh'
            }
        }
    }

}