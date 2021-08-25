# serving_backup

docker build -t occlum:latest-ubuntu18.04-tf_serving -f ./serving.dockerfile .

docker tag occlum:latest-ubuntu18.04-tf_serving clawseven/occlum:latest-ubuntu18.04-tf_serving
docker login -u clawseven
docker push clawseven/occlum:latest-ubuntu18.04-tf_serving

docker pull clawseven/occlum:latest-ubuntu18.04-tf_serving
