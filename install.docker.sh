#!/bin/bash

yum check-update

## Now run this command. It will add the official Docker repository, download the latest version of Docker, and install it:

curl -fsSL https://get.docker.com/ | sh

## After installation has completed, start the Docker daemon:

systemctl start docker

### Verify that it's running:

systemctl status docker

### The output should be similar to the following, showing that the service is active and running:

#Output
#● docker.service - Docker Application Container Engine
#   Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
#   Active: active (running) since Sun 2016-05-01 06:53:52 CDT; 1 weeks 3 days ago
#     Docs: https://docs.docker.com
# Main PID: 749 (docker)
#Lastly, make sure it starts at every server reboot:

systemctl enable docker
