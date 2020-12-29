# docker-prep
Provision a new VPS from scratch, adding a reverse proxy and containers for each website.

SSH to the freshly booted VPS with the default root credentials
Run the following:
curl -sL https://raw.githubusercontent.com/Bicko/docker-prep/master/01-base.sh | bash

Reboot the vps and run the remaining ymls as a 'normal' user. For example:
curl -sL https://raw.githubusercontent.com/Bicko/docker-prep/master/02-proxy.sh | sudo bash

.. 
