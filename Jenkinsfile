pipeline {
    agent any
    stages {
        stage ('Delete the workspace') {
            steps {
                sh "sudo rm -rf $WORKSPACE/*"
            }
        }
        stage('Installing Chef Workstation') {
            steps {
                script{
                    def exists = fileExists '/usr/bin/chef-client'
                    if (exists){
                        echo "Skipping installation, Chef is already installed"
                    } else {
                        sh 'sudo apt-get install -y wget tree unzip'
                        sh 'wget https://packages.chef.io/files/stable/chef-workstation/0.16.33/ubuntu/18.04/chef-workstation_0.16.33-1_amd64.deb'
                        sh 'sudo dpkg -i chef-workstation_0.16.33-1_amd64.deb'
                        sh 'sudo chef env --chef-license accept'
                    }
                }
            }
        }
        stage('Download APache cookbook') {
            steps {
                git 'https://github.com/AdanOSwin/apache2.git'
            }
        }
        stage('Install Kitchen Docker gem') {
            sh 'chef gem install kitchen-docker'
        }
    }
}