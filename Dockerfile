FROM eyedeekay/whonix:unstable
USER root
RUN apt-get install -y ronn
COPY . /home/user/i2p-ssh-config
RUN chown -R user /home/user/i2p-ssh-config
USER user
WORKDIR /home/user/i2p-ssh-config
RUN make deb
USER root
RUN apt-get install -y ../i2p-ssh-config*.deb
RUN mkdir -p /run/sshd
CMD /usr/sbin/i2p-sshd -D
