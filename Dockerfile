FROM public.ecr.aws/sam/build-provided.al2023

#
# Install Nim
#
ARG NIM_VERSION=2.0.4
RUN dnf install -y xz
ADD https://nim-lang.org/download/nim-$NIM_VERSION-linux_x64.tar.xz /tmp/nim-$NIM_VERSION-linux_x64.tar.xz
RUN tar -xf /tmp/nim-$NIM_VERSION-linux_x64.tar.xz -C /root
ENV PATH=/root/nim-$NIM_VERSION/bin:$PATH

#
# Build the Application
#
WORKDIR /build
COPY bootstrap.nimble template.yaml Makefile /build/
COPY src/ /build/src/
RUN sam build

