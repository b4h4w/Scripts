#!/bin/bash

wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.14.9-1_amd64.deb && sudo WAZUH_MANAGER='192.168.122.245' dpkg -i ./wazuh-agent_4.14.9-1_amd64.deb
