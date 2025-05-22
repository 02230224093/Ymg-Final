pipeline {
    agent any

    triggers {
        githubPush()
    }

    environment {
        IMAGE_NAME = "hello-java-app"
        CONTAINER_NAME = "hello-java-app"
    }

    stages {
        stage('Repoyu Klonla') {
            steps {
                git url: 'https://github.com/02230224093/Ymg-Final.git', branch: 'main'
            }
        }

        stage('Docker Image Oluştur') {
            steps {
                echo "Docker Image oluşturuluyor..."
                bat "docker build -t %IMAGE_NAME% ."
            }
        }

        stage('Eski Conteyneri Durdur') {
            steps {
                echo "Eski konteyner durduruluyor..."
                bat '''
                    docker rm -f %CONTAINER_NAME% || echo "Konteyner bulunamadı veya zaten durdurulmuş."
                '''
            }
        }

        stage('Yeni Conteyneri Oluştur') {
            steps {
                echo "Yeni konteyner oluşturuluyor..."
                bat "docker run -d --name %CONTAINER_NAME% -p 8085:80 %IMAGE_NAME%"
            }
        }
    }

    post {
        success {
            echo "Yayın başarılı: http://localhost:8085"
        }
        failure {
            echo "Pipeline başarısız oldu"
        }
    }
}
