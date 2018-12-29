pipeline {

  environment {
    registry = "docker.mjamsek.com/test-ci"
    registryCredential = 'docker-mjamsek'
    dockerImage = ''
  }

  agent any

  stages {
    stage('cloning git') {
        steps {
            git 'https://github.com/Jamsek-m/test-jenkins.git'
        }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    // stage('deploy') {
    //    steps {
    //        script {
    //            docker.withRegistry('https://docker.mjamsek.com', registryCredential) {
    //                dockerImage.push()
    //            }
    //        }
    //    }
    //}
  }
}
