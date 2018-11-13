# i2p-ssh-config

Requires: [i2pd 2.21](https://github.com/purplei2p/i2pd/) and [genmkfile](https://github.com/whonix/genmkfile/)

Optionally can be used with: [samcatd](https://github.com/eyedeekay/sam-forwarder) and [java-i2p](https://geti2p.net)

Proof-of-Concept for an apt-installable ssh-over-i2p configuration using i2pd's
new tunnels.d folder. It consists of an alternate set of configuration files for
OpenSSH and i2pd that automatically configures the sshd with fresh, i2p-only
keys, only on the localhost, on port 7622. Then it forwards that new SSH service
to the i2p network. All automatically. It doesn't have all the features I want
it to yet, but it should work.
