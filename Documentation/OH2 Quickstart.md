# MYBUTLER OpenHAB 2 Quickstart

## Overview
The local client for OpenHAB 2 is meant to be a full-time home-automation server. The MYBUTLER system has been designed with as much functionality as possible without a server (i.e. failsafe) but without such a server the home-automation functions are impossible to use. The local client comes with a large number of additional protocols supported, but for the MQTT protocol used by MYBUTLER another piece of software must be installed to manage those communications as well. Both of these packages work together to provide intelligent tracking and control of home-automation units, and both are largely expandable outside the scope of this document.

## Installation
The install script has been tuned to work on a blank image of Raspbian Jessie, but should work or be easily adaptable to other linux packages. All that is required to install the OpenHAB 2 runtime with the required additional software is a single command:
````
sudo ~/MYBUTLER/Software/installOH2.sh
````

## Concepts
The following concepts are the core of the system:
  - OpenHAB 2
    - Thing : A _thing_ is a single unit of control, much like a TV remote control. The OpenHAB 2 system uses things to organize _items_ into a logical unit, just like the buttons on a remote control. The MYBUTLER hardware can be thought of as a _thing_ with many individual _items_ it is controlling, but for now the OpenHAB software does not integrate with MYBUTLER hardware in this fashion.
    - Item: Each _thing_ controls multiple _item_s, but ultimately it is the _item_ doing the work in the system. In less complicated protocols, like MQTT used in the MYBUTLER hardware, the concept of an _item_ is managed manually by writing configuration files, and there are no _things_.
    - Types: OpenHAB 2 has multiple _item_ _types_ built-in, and pre-existing controls for these _types_. Information on those can be found at the [OpenHAB Docs](http://docs.openhab.org/concepts/items.html). Each piece of MYBUTLER hardware contains one or more _items_, each with it's own _type_.
    - Rules: OpenHAB 2 allows users to write _rules_ that define actions to be taken when certain conditions are triggered. These conditions can be REST API calls, other _item_ actions like changing from ON to OFF, timers, or add-on conditions for things like specific MQTT messages. The _rules_ defined can then trigger actions, which cover a similarly wide range of options. This chaining of conditions and actions leads to the ability to control event flows in great detail and with great precision, and leads to much of the "power" of OpenHAB 2.
  - MQTT
    - Broker: An MQTT _broker_ is software that manages the flow of communications between different parts of the MQTT system, including user authorization, QoS, and routing. This _broker_ must be running in order for any communication to take place with the MQTT protocol. The Mosquitto MQTT package is installed as a _broker_ but can also serve as a _publisher_ and _subscriber_ if desired.
    - Topic: A _topic_ in the MQTT system is similar to a "channel" where messages can be sent and received. A _topic_ does not need to be created before it is used, and provides no enhanced services beyond organizing message flow in the system.
    - Publisher: Any piece of software that sends information to an MQTT broker is considered a _publisher_ on whatever _topic_ that software is sending data to.
    - Subscriber: A piece of software that contacts an MQTT _broker_ and requests updates on a specific _topic_ is considered a _subscriber_ to that _topic_. The _broker_ will attempt to deliver all messages from all _publishers_ to a _topic_ to all _subscribers_ of that _topic_.