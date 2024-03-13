pipeline {
    agent any
    
    environment {
        MAVEN_HOME = tool 'Maven'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/royalkingzeher/Minor'
            }
        }

        stage('Build and Test') {
            steps {
                // Use the 'withMaven' step to handle Maven configurations
                withMaven(maven: 'Maven') {
                    sh 'mvn clean install test'
                }
            }
        }

        stage('Integration Tests') {
            steps {
                // Add commands for integration tests if needed
            }
        }

        stage('Package') {
            steps {
                // Add commands to package the application (e.g., create JAR or WAR)
            }
        }

        stage('Deploy to Test Environment') {
            steps {
                // Add commands to deploy to a test environment
            }
        }

        stage('Deploy to Production') {
            steps {
                // Add commands to deploy to production
            }
        }
    }

    post {
        success {
            // Actions to be performed if the pipeline is successful
            echo 'Pipeline succeeded! Deploying to production...'
        }
        failure {
            // Actions to be performed if the pipeline fails
            echo 'Pipeline failed! Notify the team...'
        }
    }
