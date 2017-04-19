# MYBUTLER OpenHAB Cloud Quickstart

## Overview
The cloud service for OpenHAB 2 is a large and complicated piece of software engineering that conspires to perform a few tasks, but to perform them very well. The main purpose of the cloud service is to allow the user's OpenHAB 2 local server to connect to it and then provide the user world-wide secure access to that local server. This means that any internet connected device (with the appropriate authorizaion) can then act as a controller, just as if the user was connected to their own network.

## Installation
### Core Install
The install script has been tuned to work on a fresh Ubuntu 16 LTS VM from either AWS or Azure, but should work or be easily adaptable to other linux packages. All that is required to install the OpenHAB 2 cloud service, with the required additional software, is a single command:
````
sudo ~/MYBUTLER/Software/installOHCloud.sh
````
### Additional Tools
While OpenHAB Cloud will function on its own, it is also highly suggested to install two additional pieces of software. Both of these enhancements ensure that the user can get the most benefit with the least effort when using the OpenHAB Cloud service.
#### PM2 Process Monitor
PM2, once installed and configured, will ensure that your OpenHAB Cloud service is running as long as the VM is powered on. It does this without needing any further scripting or other workarounds to ensure the process remains running, and can be installed by running the following command:
````
sudo ~/MYBUTLER/Software/Tools/enablePM2.sh
````
#### SSL for Nginx
The second script is a little more complicated, but will result in a server that has industry-grade encryption (TLS 1.2 w/ EECDH+AESGCM) when the user connects to their cloud service. This additional security is required for services like Alexa to function correctly, and to avoid transmitting your password and data to the world in plain, readable text. The new layer can be installed by running:
````
sudo ~/MYBUTLER/Software/Tools/secureNginx.sh
````
For this security to work, the cloud service must be served from a public IP address, pointed to by a set of DNS entries that exist in a name server for a WHOIS registered domain. Sub-domains are also legal, as shown in the table below. AWS and Azure make this simple, with their own hosted solutions for computing, domain management, and DNS configuration. Regardless of the interplay between those three elements, the DNS records provider only requires two records once the domain is registered:

__DNS RECORDS__

| __NAME__ | __TYPE__ | __VALUE__ |
| --- | :---: | --- |
| sub.domain.com | A | \<SERVER IP\> |
| www<i></i>.sub.domain.com | CNAME | sub.domain.com |

Likewise, there are many VM security methods, but each cloud provider offers firewall options for their servers. For the system to work correctly the firewall settings for the cloud server need to be set as follows:

__FIREWALL RULES__

| __DIRECTION__ | __PORT__ | __IP ADDRESS__ | __SERVICE__ |
| :---: | :---: | :---: | :---: |
| _IN_ | 22 | ALL | SSH |
| _IN_ | 80 | ALL | HTTP |
| _IN_ | 443 | ALL | HTTPS |
| _IN_ | 3000 | ALL | OpenHAB |
| _OUT_ | ALL | ALL | ALL |

## Outcome
By following the above steps, the user should be able to produce an OpenHAB Cloud service that:
- Serves as a reverse-proxy for the OpenHAB 2 installation
- Accepts SSH connections for management
- Uses SSL/TLS encryption for incoming web connections
- Runs as long as the VM is powered on in the cloud