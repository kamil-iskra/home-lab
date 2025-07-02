
cd /usr/local/etc/pkg/repos/

nano pfSense.conf
nano FreeBSD.conf

# Change the following lines to pfSense.conf and FreeBSD.conf
FreeBSD: { enabled: true }

pkg update

pkg search wazuh-agent

pkg install wazuh-agent-4.12.0 # or the latest version

cp /etc/localtime /var/ossec/etc/

nano /var/ossec/etc/ossec.conf
# Change the following lines to ossec.conf
 <server>
   <address>10.10.30.5</address>
   <port>1514</port>
 </server>

# Enable the Wazuh agent service
sysrc wazuh_agent_enable="YES"

ln -s /usr/local/etc/rc.d/wazuh-agent /etc/rc.d/wazuh-agent.sh

service wazuh-agent start

