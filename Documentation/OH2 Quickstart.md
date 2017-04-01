# MYBUTLER OpenHAB 2 Quickstart

### Overview
The local client for OpenHAB 2 is meant to be a full-time home-automation server. The MYBUTLER system has been designed with as much functionality as possible without a server (i.e. failsafe) but without such a server the home-automation functions are impossible to use. The local client comes with a large number of additional protocols supported, but for the MQTT protocol used by MYBUTLER another piece of software must be installed to manage those communications as well. Both of these packages work together to provide intelligent tracking and control of home-automation units, and both are largely expandable outside the scope of this document.

## Installation
The install script has been tuned to work on a blank image of Raspbian Jessie, but should work or be easily adaptable to other linux packages. All that is required to install the OpenHAB 2 runtime with the required additional software is a single command:
  ````sudo ~/MYBUTLER/Software/installOH2.sh````

## Concepts
The following concepts are the core of the system:
  - OpenHAB 2
    - Thing : A _thing_ is a single unit of control, much like a TV remote control. The OpenHAB 2 system uses things to organize _item_s into a logical unit, just like the buttons on a remote control. The MYBUTLER hardware can be thought of as a _thing_ with many individual _item_s it is controlling, but for now the OpenHAB software does not integrate with MYBUTLER hardware in this fashion.
    - Item: Each _thing_ controls multiple _item_s, but ultimately it is the _item_ doing the work in the system. In less complicated protocols, like MQTT used in the MYBUTLER hardware, the concept of an _item_ is managed manually by writing configuration files, and there are no _thing_s.
    - Types: OpenHAB 2 has multiple _item_ types built-in, and pre-existing controls for these types. Information on those can be found at the [OpenHAB Docs](http://docs.openhab.org/concepts/items.html). Each piece of MYBUTLER hardware contains one or more _item_s, each with it's own _type_.
  - MQTT
    - Broker: An MQTT broker is software that manages the flow of communications between different parts of the MQTT system, including user authorization, QoS, and routing. This broker must be running in order for any communication to take place with the MQTT protocol.
    - Topic: A _topic_ in the MQTT system is similar to a "channel" where messages can be sent and received. A _topic_ does not need to be created before it is used, and provides no enhanced services beyond organizing message flow in the system.
    - Publisher: Any piece of software that sends information to an MQTT broker is considered a _publisher_ on whatever _topic_ that software is sending data to.
    - Subscriber: A piece of software that contacts an MQTT _broker_ and requests updates on a specific _topic_ is considered a _subscriber_ to that _topic_. The _broker_ will attempt to deliver all messages from all _publisher_s to a _topic_ to all _subscriber_s of that _topic_.