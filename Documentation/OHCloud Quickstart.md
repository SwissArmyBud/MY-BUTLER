# MYBUTLER OpenHAB Cloud Quickstart

### Overview
The cloud service for OpenHAB 2 is a large and complicated piece of software engineering that conspires to perform a few tasks, but to perform them very well. The main purpose of the cloud service is to allow the user's OpenHAB 2 local server to connect to it and then provide the user world-wide secure access to that local server. This means that any internet connected device (with the appropriate authorizaion) can then act as a controller, just as if the user was connected to their own network.

## Installation
The install script has been tuned to work on a fresh Ubuntu 16 LTS VM from either AWS or Azure, but should work or be easily adaptable to other linux packages. All that is required to install the OpenHAB 2 cloud service, with the required additional software, is a single command:
````
sudo ~/MYBUTLER/Software/installOHCloud.sh
````
However, it is also highly suggested to install two additional pieces of software. One will ensure that your service is running as long as the VM is powered on:
````
sudo ~/MYBUTLER/Software/Tools/enablePM2.sh
````
The second script is a little more complicated, but will result in a server that has industry-grade encryption (TLS 1.2 w/ EECDH+AESGCM) when the user connects from outside their network. For this to work, the cloud service must be served from a global IP address, with its own set of DNS entries in a global records provider. AWS and Azure make this simple, with their own hosted DNS, but any global DNS provider only requires the same two records:

__DNS RECORDS__

| __NAME__ | __TYPE__ | __VALUE__ |
| --- | :---: | --- |
| sample.domain.com | A | \<SERVER IP\> |
| www<i></i>.sample.domain.com | CNAME | sample.domain.com |

Likewise, there are many VM security methods, but each cloud provider offers firewall options for their servers. For the system to work correctly the firewall settings for the cloud server need to be set as follows:

__FIREWALL RULES__

| __DIRECTION__ | __PORT__ | __IP ADDRESS__ | __SERVICE__ |
| :---: | :---: | :---: | :---: |
| _IN_ | 22 | ALL | SSH |
| _IN_ | 80 | ALL | HTTP |
| _IN_ | 443 | ALL | HTTPS |
| _IN_ | 3000 | ALL | OpenHAB |
| _OUT_ | ALL | ALL | ALL |