pipeline {
    agent any
    tools {
        maven 'MAVEN_HOME'
    }
    stages {
            stage('Stage 1 : test Stage'){
                steps{
                    sh 'mvn test'
                }
            }
            stage('Stage 2 : Install stage'){
                steps{
                    sh 'mvn install'
                }
            }
            stage('Stage Final : Build Sucess'){
                steps{
                    echo 'Build Sucessfull'
                }
            }
    }
}
