FROM openhorizon/aarch64-tx2-cudabase

MAINTAINER nuculur@gmail.com

# Install prereqs
RUN apt-key add /var/cuda-repo-9-0-local/7fa2af80.pub  #CUDA9.0 key
RUN apt-get update && apt-get install -y software-properties-common 
RUN add-apt-repository ppa:webupd8team/java && apt-get update && apt-get install -y oracle-java8-installer
RUN apt-get install -y zip unzip autoconf automake libtool curl zlib1g-dev maven wget python-numpy swig python-dev python-pip python-wheel

RUN wget https://github.com/bazelbuild/bazel/releases/download/0.4.5/bazel-0.4.5-dist.zip -o /tmp/bazel-0.4.5-dist.zip && unzip bazel-0.4.5-dist.zip && rm bazel-0.4.5-dist.zip
WORKDIR /tmp/bazel-0.4.5-dist

