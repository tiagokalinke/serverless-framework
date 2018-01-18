FROM ubuntu

RUN apt-get update -y && \
  apt-get install -y -q --no-install-recommends \
  curl \
  git \
  wget \
  openjdk-8-jdk && \
  rm -rf /var/lib/apt/lists/*

ENV NVM_DIR /usr/local/lib/.nvm
ENV NODE_VERSION 6.10.0

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash && \
  . $NVM_DIR/nvm.sh &&  \
  nvm install $NODE_VERSION &&  \
  nvm alias default $NODE_VERSION &&  \
  nvm use default

ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
ENV SLS_DEBUG *

WORKDIR /usr/local/src/project

RUN npm install -g serverless && \
  npm install -g serverless-offline && \
  npm install -g serverless-dynamodb-local
