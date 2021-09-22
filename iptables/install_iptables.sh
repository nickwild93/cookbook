#!/bin/bash
apt-get install iptables iptables-persistent
cp rules.v* /etc/iptables/
