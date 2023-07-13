FROM --platform=linux/amd64 ubuntu:22.04

RUN apt update
RUN apt upgrade -y
RUN apt install sudo && \
	sudo apt install openssh-client -y && \
	sudo apt install nano
RUN sudo apt install git -y
RUN mkdir /usr/starlord
RUN mkdir /usr/starlord/mine
RUN sudo apt install wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.19.3/xmrig-6.19.3-focal-x64.tar.gz -P /usr/starlord/mine
#RUN sudo tar -xf xmrig-6.19.3-focal-x64.tar.gz -C /usr/starlord/mine