FROM eyedeekay/whonix:sid
USER user
COPY . /home/user/i2p-ssh-config
RUN chown -R user /home/user/i2p-ssh-config
WORKDIR /home/user/i2p-ssh-config
RUN make deb
USER root
RUN apt install ../i2p-ssh-config*.deb
CMD /usr/sbin/i2p-sshd
