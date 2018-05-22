pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'dotnet build -c release -f netcoreapp2.0 -o app'
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
                    docker.withRegistry('https://eu.gcr.io', 'gcr:FantasyFootballSite') 
                    {
                        docker.build('FantasyFootballSite/teamservice')
                        docker.image('FantasyFootballSite/teamservice').push("${BUILD_NUMBER}")
                    }

                }
            }
        }
    }
}