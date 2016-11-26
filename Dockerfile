FROM node:7.2.0

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 0.17.8 && \
  echo "" >> ~/.bashrc && \
  echo 'export PATH="$HOME/.yarn/bin:$PATH"' >> ~/.bashrc

CMD /bin/bash
