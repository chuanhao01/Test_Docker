FROM nvcr.io/nvidia/tensorrt:20.08-py3

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections; \
    apt-get update && apt-get install -qq -y libgl1-mesa-glx \
    libopencv-dev
RUN python3 -m pip install \
    opencv-python \
    torch \
    torchvision \
    onnx \
    onnxruntime \
    jupyterlab \
    tensorboard

WORKDIR /workspace