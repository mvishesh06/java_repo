pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerrafromPath()}"
    }
    stages {
        stage('terraform init'){
            steps{
                sh "terraform init"
            }

        }
    }
}

def getTerrafromPath(){
    def tfHome = tool name: 'terraform', type: 'terraform'
    return tfHome
}