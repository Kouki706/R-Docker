FROM r-base

# install development packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    openssh-client \
    git && \
    # clean to reduce image size
    apt-get clean -y && \
    apt-get autoremove -y && \
    apt-get autoclean -y && \
    rm -rf /var/lib/apt/lists/*
