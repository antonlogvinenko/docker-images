FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y emacs git less curl wget openssl libssh2-1-dev
RUN curl -sSL https://get.haskellstack.org/ | sh

ADD .profile /root/.profile_suffix
RUN cat /root/.profile_suffix >> /root/.profile

#ENTRYPOINT ["/bin/sh", "-c"]
#CMD ["/bin/bash"]