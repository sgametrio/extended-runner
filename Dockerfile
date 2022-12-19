FROM summerwind/actions-runner:latest

RUN sudo apt-get update -y \
    && sudo apt-get install less \
    && sudo rm -rf /var/lib/apt/lists/*

# Install AWS CLI v2
RUN ( \
    cd tmp && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && rm awscliv2.zip && \
    sudo ./aws/install )
