String getRepoName() {
    return "${env.GIT_URL}".tokenize('/')[3].split("\\.")[0]
}

String getRepoOwnerName() {
    return "${env.GIT_URL}".tokenize('/')[2].split("\\.")[0]
}
node {
        stage('Checkout') {
            git url: "https://github.com/jmeekhof/jenkins-docker-example.git"
        }

        stage('build') {
            docker.build('mobycounter')
        }

        stage('deploy') {
            sh './deploy.sh'
        }
}
