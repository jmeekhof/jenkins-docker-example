String getRepoName() {
    return "${env.GIT_URL}".tokenize('/')[3].split("\\.")[0]
}

String getRepoOwnerName() {
    return "${env.GIT_URL}".tokenize('/')[2].split("\\.")[0]
}

pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
            git url: "https://github.com/jmeekhof/jenkins-docker-example.git"
            }
        }

        stage('build') {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                    dir '.'
                    label 'mobycounter'
                }
            }
            /*
            steps{
                docker.build('mobycounter')
            }
            */
        }

        stage('deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}
