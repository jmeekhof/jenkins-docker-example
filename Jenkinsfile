String getRepoName() {
    return "$GIT_URL".tokenize('/')[3].split("\\.")[0]
}

String getRepoOwnerName() {
    return "$GIT_URL".tokenize('/')[2].split("\\.")[0]
}
node {
        stage('Checkout') {
            git url: "https://github.com/${getRepoOwnerName()}/jenkins-docker-example.git"
        }

        stage('build') {
            docker.build('mobycounter')
        }

        stage('deploy') {
            sh './deploy.sh'
        }
}
