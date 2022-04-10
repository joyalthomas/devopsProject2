pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerHub')
	}

	stages {


		stage('docker logout') {

                        steps {
                                sh 'docker logout'
                        }
                }


		stage('Build') {

			steps {
				sh 'docker build -t joyalthomas97/devopsproject2:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push joyalthomas97/devopsproject2:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
