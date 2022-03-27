node{

  git branch: "main", url: "https://github.com/anshul2020/simple-django-app.git" 

  stage ('Building the Docker image') {
    sh "echo building the image..."
    docker.build("django-app:${env.BUILD_ID}")
    sh "echo building image complete."

  }

  stage ('Deploying the Docker image') {
    sh "echo Deploying the container..."
    sh "docker rm -f django_test"
    sh "docker run -d -p 8000:8000 --name django_app django-app:latest"
    sh "echo Container successfully deployed."

  }

}