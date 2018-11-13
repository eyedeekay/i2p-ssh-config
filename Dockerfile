FROM debian:sid
RUN apt-get update && apt-get install -y gnupg2
RUN apt-key --keyring /etc/apt/trusted.gpg.d/whonix.gpg adv --keyserver hkp://ipv4.pool.sks-keyservers.net:80 --recv-keys 916B8D99C38EAF5E8ADC7A2A8D66066A2EEACCDA
RUN echo "deb http://deb.whonix.org stretch main" | tee /etc/apt/sources.list.d/whonix.list
RUN apt-get update && apt-get install -y genmkfile ruby-ronn debhelper
COPY . /usr/src/i2p-ssh-config
WORKDIR /usr/src/i2p-ssh-config
RUN make deb
CMD ls
