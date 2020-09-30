pipeline {
    agent any
    stages {
        stage ('Delete the workspace') {
            steps {
                sh "sudo rm -rf $WORKSTATION/*"
            }
        }
        stage('Installing Chef Workstation') {
            steps {
                sh 'sudo apt-get install -y wget tree unzip'
                sh 'wget https://packages.chef.io/files/stable/chef-workstation/0.16.33/ubuntu/18.04/chef-workstation_0.16.33-1_amd64.deb'
                sh 'sudo dpkg -i chef-workstation_0.16.33-1_amd64.deb'
                sh 'sudo chef env --chef-license accept'
            }
        }
        stage('Third Stage') {
            steps {
                echo "Third stage"
            }
        }
    }
}