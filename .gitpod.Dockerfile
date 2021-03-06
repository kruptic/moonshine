FROM gitpod/workspace-full

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    make zlibc zlib1g-dev cabal-install 

RUN su vscode -c "cabal update && cabal install idris"
ENV PATH=/home/vscode/.cabal/bin:${PATH}

RUN git clone https://github.com/idris-lang/Idris-dev.git  /home/vscode/src/idris-lang/Idris-dev
