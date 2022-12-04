FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
RUN apt update \
&& apt install -y wget curl unzip \
&& apt upgrade -y
RUN wget -O ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.2/ttyd.x86_64 \
&& chmod 777 ttyd
EXPOSE 7681
CMD ./ttyd bash
