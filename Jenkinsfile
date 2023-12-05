pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('docker')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t cfultz/hugo-nginx .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push cfultz/hugo-nginx'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}