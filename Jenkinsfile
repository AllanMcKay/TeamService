pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'dotnet build -c release -f netcoreapp2.0 -o /app'
            }
        }
    }
}