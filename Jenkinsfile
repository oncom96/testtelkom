pipeline {
  environment {
    imagename = "oncom06/nginx"
    registryCredential = 'malikaarji06'
    dockerImage = 'nginx'
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git([url: 'https://github.com/oncom96/testtelkom.git', branch: 'main', credentialsId: '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'])

      }
    }
    stage('Building image') {
      steps{
        script {
          docker build -t testtelkom .
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            docker push oncom06/nginx:tagname

          }
        }
      }
    }