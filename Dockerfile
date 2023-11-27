# Use the latest Ubuntu image
FROM ubuntu:latest

# Set the working directory
WORKDIR /src

# Copy the current directory contents into the container at /src
COPY scripts /src/scripts

# Install required packages
RUN apt-get upgrade -y && \
    apt-get update && \
    apt-get install -y unzip wget curl python3 python3-pip golang-go 

# Install awscli
RUN pip3 install --upgrade pip && \
    pip3 install awscli --upgrade

# Install Terraform
ARG TERRAFORM_VERSION="1.6.4"
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Install tflint
ARG TFLINT_VERSION="0.49.0"
RUN wget https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip && \
    unzip tflint_linux_amd64.zip && \
    mv tflint /usr/local/bin/ && \
    rm tflint_linux_amd64.zip

# Cleanup unnecessary packages and files to reduce image size
RUN apt-get clean