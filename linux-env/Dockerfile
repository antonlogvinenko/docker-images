FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git emacs less curl wget openssl libssh2-1-dev man iputils-ping sudo mc emacs gnutls-bin python

RUN useradd -m -d /home/anton anton
RUN echo "anton:1q2w3e" | chpasswd
RUN su anton
RUN usermod -aG sudo anton

RUN chown anton:anton -R /home/anton

ADD profile_suffix /home/anton/profile_suffix
RUN cat /home/anton/profile_suffix >> /home/anton/.profile
RUN rm /home/anton/profile_suffix

RUN mkdir /home/anton/.ssh
VOLUME ["/home/anton/.ssh", "/home/anton/dev"]

ADD init.el /home/anton/.emacs.d/init.el

RUN curl -sSL https://get.haskellstack.org/ | sh

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py
RUN pip install paramiko optparse

USER anton
WORKDIR /home/anton