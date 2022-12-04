FROM ubuntu:20.04
RUN apt update \
&& apt install -y wget curl sudo unzip screen 
RUN wget -O ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.2/ttyd.x86_64 \
&& chmod 777 ttyd
EXPOSE 7681
CMD ./ttyd bash
