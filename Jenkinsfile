pipeline {
    agent any
   
    environment {
        MAVEN_HOME = tool 'Maven'
    }

    stages {
        stage('Checkout') {
            steps {
                git https://github.com/royalkingzeher/Minor.git
            }
        }

        stage('Build') {
            steps {
                script {
                    // Set the Maven path and execute Maven commands
                    def mavenHome = tool 'Maven'
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} clean install"
                }
            }
        }

        stage('Unit Tests') {
            steps {
                script {
                    def mavenHome = tool 'Maven'
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} test"
                }
            }
        }

        stage('Integration Tests') {
            steps {
                script {
                    // Add commands for integration tests if needed
                }
            }
        }

        stage('Package') {
            steps {
                script {
                }
            }
        }

        stage('Deploy to Test Environment') {
            steps {
                script {
                }
            }
        }

        stage('Deploy to Production') {
            steps {
                script {
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded! Deploying to production...'
        }
        failure {
            echo 'Pipeline failed! Notify the team...'
        }
    }
}

