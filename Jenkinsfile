pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "cms-apache"
    }

    stages {
        stage('Checkout') {
            steps {
                echo '📦 Clonage du dépôt Git...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '⚙️ Construction de l’image Apache avec le CMS...'
                sh 'docker-compose build'
            }
        }

        stage('Deploy CMS on Apache') {
            steps {
                echo '🚀 Déploiement du CMS sur Apache...'
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        success {
            echo "✅ CMS déployé avec succès sur http://localhost:8080"
        }
        failure {
            echo "❌ Échec du déploiement CMS."
        }
    }
}

