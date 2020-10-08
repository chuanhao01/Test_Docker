FROM nvcr.io/nvidia/tensorflow:20.09-tf2-py3

RUN apt-get update && apt-get install -qq -y libgl1-mesa-glx
RUN python3 -m pip install \
    opencv-python \
    tensorflow-model-optimization

WORKDIR /workspace
