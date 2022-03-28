node{

  git branch: "main", url: "https://github.com/anshul2020/simple-django-app.git" 

  stage ('Build image') {
    sh "echo building the image..."
    sh "docker build --tag django_app:${env.BUILD_ID} . --no-cache"
    sh "echo building image complete."

  }

  stage ('Deploy image') {
    sh "echo Deploying the container..."
    sh "docker run -d -p 8000:8000 --name django_app django_app:${env.BUILD_ID}"
    sh "echo Container successfully deployed."

  }

}
