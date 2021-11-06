FROM ubuntu:20.10
# lastest lantern version: latest
WORKDIR /root
RUN apt-get update  && \
         apt-get -y install wget libappindicator3-1 libpcap0.8:amd64 && \
	 wget -O lantern.deb https://github.com/getlantern/lantern-binaries/blob/master/lantern-installer-64-bit.deb && \
	 wget -O settings.yaml https://raw.githubusercontent.com/kilinger/lantern-docker/myself/settings.yaml && \
         dpkg -i lantern.deb && \
         rm -rf lantern.deb && \
         apt-get -f install && \
         apt-get clean && \
         rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
         mkdir /root/.lantern && \
         mv settings.yaml /root/.lantern/settings.yaml

EXPOSE 1070/tcp 1080/tcp 8080/tcp

ENTRYPOINT ["/usr/bin/lantern", "--configdir=/root/.lantern", "--headless=true"]
