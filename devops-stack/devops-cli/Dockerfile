FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl gnupg software-properties-common lsb-release unzip \
    python3 python3-pip git ssh sudo && \
    pip3 install ansible

# Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor > /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    > /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update && \
    apt-get install -y terraform

WORKDIR /workspace
CMD ["bash"]
