FROM ghcr.io/fadoss/umaudemc:latest

RUN apt-get update && apt-get install -y \
    vim

RUN mkdir -p /install
COPY install/prism-install-ubuntu.sh /install
RUN cd /install && ./prism-install-ubuntu.sh
ENV PRISM_PATH=/install/prism/prism/bin

ENTRYPOINT ["/bin/bash"]