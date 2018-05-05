#!groovy
def srcDir = 'src'
def builderNode = 'webservices'

node (builderNode) {

    stage ('get code') {
        dir(srcDir) {
            checkout scm
        } 
    }

    stage ('Test') {
        //TODO: Add some test related stuff
        echo "Sometest"
    }

    stage('Build') {
        dir (srcDir) {
            nodejs('nodejs-10') { // from Jenkins Tool 'nodejs-10'
                dir ('WebHost'){
                    sh "npm install -g webpack"
                    sh "webpack --config webpack.config.vendor.js"
                    sh "dotnet run"
                }
            }
        }
    }
    
    stage('Build docker') {
        echo "Build some docker images"
    }
    stage ('Push docker') {
        echo "Push docker"
    }
    stage ('Deploy to dev env') {
        echo "Deploy"
    }
    stage ('Test deployment') {
        echo "Test deployment"
    }
}