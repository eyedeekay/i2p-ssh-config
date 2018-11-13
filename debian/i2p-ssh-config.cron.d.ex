#
# Regular cron jobs for the i2p-ssh-config package
#
0 4	* * *	root	[ -x /usr/bin/i2p-ssh-config_maintenance ] && /usr/bin/i2p-ssh-config_maintenance
