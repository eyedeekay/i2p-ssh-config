#!/usr/bin/make -f

## Copyright (C) 2012 - 2018 ENCRYPTED SUPPORT LP <adrelanos@riseup.net>
## See the file COPYING for copying conditions.

## genmkfile - Makefile - version 1.5

## This is a copy.
## master location:
## https://github.com/Whonix/genmkfile/blob/master/usr/share/genmkfile/Makefile

GENMKFILE_PATH ?= /usr/share/genmkfile
GENMKFILE_ROOT_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

export GENMKFILE_PATH
export GENMKFILE_ROOT_DIR

include $(GENMKFILE_PATH)/makefile-full

dummy:

VERSION=0.1
EMAIL=notreal@eventually.com
NAME=i2p-ssh-config

gz:
	tar --exclude "./.git" --exclude "./debian" -czvf ../"$(NAME)_$(VERSION).tar.gz" .

debian/:
	dh_make -i -n -c mit \
		-e "$(EMAIL)" \
		-p "$(NAME)_$(VERSION)" \

deb: gz debian
	debuild -us -uc
