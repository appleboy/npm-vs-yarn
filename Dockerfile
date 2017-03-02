FROM node:latest

ENV YARN_VERSION 0.21.3

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION && \
  echo "" >> ~/.bashrc && \
  echo 'export PATH="$HOME/.yarn/bin:$PATH"' >> ~/.bashrc

CMD /bin/bash
