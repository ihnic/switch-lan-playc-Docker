FROM debian:10
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN apt-get update -y \
        && apt-get install wget libpcap0.8 -y \
        && wget https://github.com/spacemeowx2/switch-lan-play/releases/download/v0.2.1/lan-play-linux \
        && chmod +x lan-play-linux
CMD /usr/src/app/lan-play-linux --relay-server-addr 10.0.0.110:11451
