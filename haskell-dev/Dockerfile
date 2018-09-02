FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y emacs git less curl wget openssl libssh2-1-dev man

RUN apt-get install -y mc

RUN useradd -m -d /home/anton anton
RUN echo "anton:1q2w3e" | chpasswd
RUN su anton

RUN curl -sSL https://get.haskellstack.org/ | sh

RUN mkdir /home/anton/.ssh

#1 copy ssh keys
#2 switch to user
#3 checkout github projects
#4 emacs intero
#5 emacs settings
#6 profile shortcuts: sb
#7 show dirs externally

#ADD profile_suffix ~/profile_suffix
#RUN cat ~/profile_suffix >> ~/.profile
#RUN rm ~/profile_suffix

#ENTRYPOINT ["/bin/sh", "-c"]
#CMD ["/bin/bash"]