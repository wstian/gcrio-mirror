From nvcr.io/nvidia/tensorflow:19.10-py3

RUN apt update

RUN pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com numpy pandas scikit-learn scikit-image scipy
RUN pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com tensorboard PyYAML
RUN pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com sentencepiece

RUN useradd -ms /bin/bash work

USER work
