properties([pipelineTriggers([githubPush()])])
pipeline {
    agent any 
        tools { 
        maven "MyMaven"
        
    }
       

    stages {
        stage('git clone') {
            steps {
               git branch: 'main', url: 'https://github.com/iheeb9/microservice-cicd.git'
        
            }
        }
        stage('clean package') {
            steps {
             sh 'mvn clean install'
        
        
            }
        }
    }
    
    post{
        always{
        
        emailext body: 'jenkins', subject: 'jenkins', to: 'iheb.youssef@esprit.tn'
        }
        
    }
        
        
}
