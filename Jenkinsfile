pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'dotnet build -c release -f netcoreapp2.0 -o app'
                //sh "docker build -t 605651801635.dkr.ecr.eu-west-1.amazonaws.com/fas/teamservice:${BUILD_NUMBER} ."
            }
        }
        stage('Publish') 
        {
            when {
                branch 'master'
            }
            steps 
            {
                script
                {
                    docker.withRegistry('https://605651801635.dkr.ecr.eu-west-1.amazonaws.com', 'ecr:eu-west-1:ECRRegistryPushKey') 
                    {
                        docker.build('fas')
                        docker.image('fas').push("${BUILD_NUMBER}")
                    }

                }
            }
        }
    }
}