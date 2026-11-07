#!/bin/bash

sudo wget https://iplists.firehol.org/files/alienvault_reputation.ipset -O /var/ossec/etc/lists/alienvault_reputation.ipset

sleep 1

sudo echo "192.168.122.189" >> /var/ossec/etc/lists/alienvault_reputation.ipset

sleep 1

sudo wget https://wazuh.com/resources/iplist-to-cdblist.py -O /tmp/iplist-to-cdblist.py

sleep 1

sudo /var/ossec/framework/python/bin/python3 /tmp/iplist-to-cdblist.py /var/ossec/etc/lists/alienvault_reputation.ipset /var/ossec/etc/lists/blacklist-alienvault

sleep 1

sudo chown wazuh:wazuh /var/ossec/etc/lists/blacklist-alienvault
