pipeline {
  agent any

  stages {
    stage('Clone Repository') {
      steps {
        git 'https://github.com/your-username/wgu-d339-cloud-resume.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t cloud-resume:jenkins .'
      }
    }

    stage('Run Container') {
      steps {
        sh 'docker stop cloud-resume || true'
        sh 'docker rm cloud-resume || true'
        sh 'docker run -d --name cloud-resume -p 8888:80 cloud-resume:jenkins'
      }
    }
  }
}
