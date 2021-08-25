FROM occlumbackup/occlum:latest-ubuntu18.04-tf_serving as base

RUN apt-get update && apt-get install git && \
    git clone git://github.com/ClawSeven/occlum.git && \
    cd occlum && \
    git checkout refine_tf_serving && \
    cd demos/tensorflow/tensorflow_serving && \
    ./prepare_model_and_env.sh && \
    cd client && \
    ./prepare_client_env.sh && \
    mv ../resnet50-v15-fp32/ /root && \
    rm -rf /root/occlum

WORKDIR /root
