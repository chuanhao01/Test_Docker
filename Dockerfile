FROM nvcr.io/nvidia/tensorrt:20.08-py3

RUN apt-get update && apt-get install -qq -y libgl1-mesa-glx
RUN python3 -m pip install \
    opencv-python \
    torch \
    torchvision \
    onnx \
    onnxruntime

WORKDIR /workspace