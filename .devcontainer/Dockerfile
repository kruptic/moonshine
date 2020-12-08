# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.148.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    make zlibc zlib1g-dev cabal-install 

RUN su vscode -c "cabal update && cabal install idris"
ENV PATH=/home/vscode/.cabal/bin:${PATH}

RUN git clone https://github.com/idris-lang/Idris-dev.git  /home/vscode/src/idris-lang/Idris-dev