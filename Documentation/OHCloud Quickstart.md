# MYBUTLER OpenHAB Cloud Quickstart

### Overview
The cloud service for OpenHAB 2 is a large and complicated piece of software engineering that conspires to perform a few tasks, but to perform them very well. The main purpose of the cloud service is to allow the user's OpenHAB 2 local server to connect to it and then provide the user world-wide secure access to that local server. This means that any internet connected device (with the appropriate authorizaion) can then act as a controller, just as if the user was connected to their own network. The second benefit is that the cloud service interfaces with external APIs to provide access to services such as E-Mail, SMS, Alexa, IFTTT, and others. This enhanced functionality allows for a truly state of the art home-automation system.

## Installation
The install script has been tuned to work on a fresh Ubuntu 16 LTS VM from either AWS or Azure, but should work or be easily adaptable to other linux packages. All that is required to install the OpenHAB 2 cloud service, with the required additional software, is a single command:
````
sudo ~/MYBUTLER/Software/installOHCloud.sh
````
However, it is also highly suggested to install two additional pieces of software. One will ensure that your service is running as long as the VM is powered on:
````
sudo ~/MYBUTLER/Software/Tools/enablePM2.sh
````
The second script is a little more complicated, but will result in a server that has industry-grade encryption (TLS 1.2 w/ EECDH+AESGCM) when the user connects from outside their network. For this to work, the cloud service must be served from a global IP address, with its own set of DNS entries in a global records provider. AWS and Azure make this simple, with their own hosted DNS, but any global DNS provider only requires the following two records:
__DNS RECORDS__

| __NAME__ | __TYPE__ | __VALUE__ |
| --- | --- | --- |
| sample.domain.com | A | <SERVER IP> |
| www.sample.domain.com | CNAME | sample.domain.com |
Likewise, each provider maintains their own VM security methods, but each cloud provider offers firewall configurations for their servers. For the system to work correctly the firewall settings for the cloud server need to be set as follows:
__FIREWALL RULES__

| __DIRECTION__ | __PORT__ | __SERVICE__ |
| --- | --- | --- |
| _IN_ | 22 | SSH |
| _IN_ | 80 | HTTP |
| _IN_ | 443 | HTTPS |
| _IN_ | 3000 | OpenHAB |
| _OUT_ | ALL | ALL |

## Concepts
The following concepts are the core of the system:
  - OpenHAB 2
    - Thing : A _thing_ is a single unit of control, much like a TV remote control. The OpenHAB 2 system uses things to organize _items_ into a logical unit, just like the buttons on a remote control. The MYBUTLER hardware can be thought of as a _thing_ with many individual _items_ it is controlling, but for now the OpenHAB software does not integrate with MYBUTLER hardware in this fashion.
    - Item: Each _thing_ controls multiple _item_s, but ultimately it is the _item_ doing the work in the system. In less complicated protocols, like MQTT used in the MYBUTLER hardware, the concept of an _item_ is managed manually by writing configuration files, and there are no _things_.
    - Types: OpenHAB 2 has multiple _item_ _types_ built-in, and pre-existing controls for these _types_. Information on those can be found at the [OpenHAB Docs](http://docs.openhab.org/concepts/items.html). Each piece of MYBUTLER hardware contains one or more _items_, each with it's own _type_.
  - MQTT
    - Broker: An MQTT broker is software that manages the flow of communications between different parts of the MQTT system, including user authorization, QoS, and routing. This broker must be running in order for any communication to take place with the MQTT protocol.
    - Topic: A _topic_ in the MQTT system is similar to a "channel" where messages can be sent and received. A _topic_ does not need to be created before it is used, and provides no enhanced services beyond organizing message flow in the system.
    - Publisher: Any piece of software that sends information to an MQTT broker is considered a _publisher_ on whatever _topic_ that software is sending data to.
    - Subscriber: A piece of software that contacts an MQTT _broker_ and requests updates on a specific _topic_ is considered a _subscriber_ to that _topic_. The _broker_ will attempt to deliver all messages from all _publishers_ to a _topic_ to all _subscribers_ of that _topic_.