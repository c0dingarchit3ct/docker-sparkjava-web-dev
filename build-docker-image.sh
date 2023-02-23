#build docker image for the application
export DOCKER_IMAGE_NAME=klf-spark-web
docker build -t $DOCKER_IMAGE_NAME .