# i2p-ssh-config

[![Build Status](https://travis-ci.org/eyedeekay/i2p-ssh-config.svg?branch=master)](https://travis-ci.org/eyedeekay/i2p-ssh-config)

Requires: [i2pd 2.21](https://github.com/purplei2p/i2pd/) and [genmkfile](https://github.com/whonix/genmkfile/)

Optionally can be used with: [samcatd](https://github.com/eyedeekay/sam-forwarder) and [java-i2p](https://geti2p.net)

Proof-of-Concept for an apt-installable ssh-over-i2p configuration using i2pd's
new tunnels.d folder. It consists of an alternate set of configuration files for
OpenSSH and i2pd that automatically configures the sshd with fresh, i2p-only
keys, only on the localhost, on port 7622. Then it forwards that new SSH service
to the i2p network. All automatically. It doesn't have all the features I want
it to yet, but it should work. I have not tested the systemd units yet.

The larger point is that with the use of /etc/i2pd/tunnels.d instead of a single
monolithic tunnels.conf file, it becomes possible to express the configuration
of a service that you wish to forward to i2p as an easy-to-install package. In
this case it's OpenSSH sshd.

If you have debuild and make installed, you can build the experimental package
by running

        make deb
