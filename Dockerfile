FROM avctrh/pytorch

# Needed to avoid debconf Display errors
ENV DEBIAN_FRONTEND noninteractive

# System Dependencies
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    libhdf5-dev \
    llvm-3.8
ENV LLVM_CONFIG /usr/lib/llvm-3.8/bin/llvm-config

# Switch to python 3.6
RUN conda install -y python=3.6
ENV PATH="/opt/conda/bin/:${PATH}"

CMD echo "Working Image"
