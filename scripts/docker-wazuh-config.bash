
pip3 install docker==7.1.0 urllib3==1.26.20 requests==2.32.2 --break-system-packages

# Add the following configuration to the Wazuh agent configuration file /var/ossec/etc/ossec.conf to enable the Docker listener
nano /var/ossec/etc/ossec.conf

<wodle name="docker-listener">
  <disabled>no</disabled>
</wodle>

# Restart the Wazuh agent to apply the changes:
systemctl restart wazuh-agent