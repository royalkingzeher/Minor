pipeline {
    agent any
    tools {
        maven 'MAVEN_HOME'
    }
    stages {
            stage('Stage 1 : Clean stage'){
                steps{
                    bat 'mvn clean'
                }
            }
            stage('Stage 2 : test Stage'){
                steps{
                    bat 'mvn test'
                }
            }
            stage('Stage 3 : Install stage'){
                steps{
                    bat 'mvn install'
                }
            }
            stage('Stage Final : Build Sucess'){
                steps{
                    echo 'Build Sucessfull'
                }
            }
    }
}
