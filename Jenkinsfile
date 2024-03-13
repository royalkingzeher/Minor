pipeline {
    agent any
    tools {
        maven 'MAVEN_HOME'
    }
    stages {
        stage('Stage 1: Clean Stage') {
            steps {
                bat 'mvn clean' // Use 'bat' for Windows command execution
            }
        }
        stage('Stage 2: Test Stage') {
            steps {
                bat 'mvn test' // Use 'bat' for Windows command execution
            }
        }
        stage('Stage 3: Build Stage') {
            steps {
                bat 'mvn install' // Use 'bat' for Windows command execution
            }
        }
        stage('Stage 4: Build Complete') {
            steps {
                echo 'Build complete'
            }
        }
    }
}
