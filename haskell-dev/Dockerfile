FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y git less curl wget openssl libssh2-1-dev man iputils-ping sudo mc emacs gnutls-bin

RUN useradd -m -d /home/anton anton
RUN echo "anton:1q2w3e" | chpasswd
RUN su anton

RUN mkdir /home/anton/.ssh
VOLUME ["/home/anton/.ssh", "/home/anton/dev"]

RUN curl -sSL https://get.haskellstack.org/ | sh

ADD init.el /home/anton/.emacs.d/init.el

ADD profile_suffix /home/anton/profile_suffix
RUN cat /home/anton/profile_suffix >> /home/anton/.profile
RUN rm /home/anton/profile_suffix

RUN chown anton:anton -R /home/anton

USER anton
WORKDIR /home/anton