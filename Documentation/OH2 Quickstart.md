# MYBUTLER OpenHAB 2 Quickstart

### Overview
The local client for OpenHAB 2 is meant to be a full-time home-automation server. The MYBUTLER system has been designed with as much functionality as possible without a server (i.e. failsafe) but without such a server the home-automation functions are impossible to use. The local client comes with a large number of additional protocols supported, but for the MQTT protocol used by MYBUTLER another piece of software must be installed to manage those communications as well. Both of these packages work together to provide intelligent tracking and control of home-automation units, and both are largely expandable outside the scope of this document.

## Installation
The install script has been tuned to work on a blank image of Raspbian Jessie, but should work or be easily adaptable to other linux packages. All that is required to install the OpenHAB 2 runtime with the required additional software is a single command:
  ````sudo ~/MYBUTLER/Software/installOH2.sh````

## Concepts
The following concepts are the core of the system:
  - OpenHAB 2
    - Thing
      A __thing__ is a single unit of control, much like a TV remote control. The OpenHAB 2 system uses things to organize __item__s into a logical unit, just like the buttons on a remote control. The MYBUTLER hardware can be thought of as a __thing__ with many individual __item__s it is controlling, but for now the OpenHAB software does not integrate with MYBUTLER hardware in this fashion.
    - Item
      Each __thing__ controls multiple __item__s, but ultimately it is the __item__ doing the work in the system. In less complicated protocols, like MQTT used in the MYBUTLER hardware, the concept of an __item__ is managed manually by writing configuration files, and there are no __thing__s.
    - Types
      OpenHAB 2 has multiple __item__ types built-in, and pre-existing controls for these types. Information on those can be found at the [OpenHAB Docs](http://docs.openhab.org/concepts/items.html). Each piece of MYBUTLER hardware contains one or more __item__s, each with it's own __type__.
  - MQTT
    - Broker
      An MQTT broker is software that manages the flow of communications between different parts of the MQTT system, including user authorization, QoS, and routing. This broker must be running in order for any communication to take place with the MQTT protocol.
    - Topic
      A __topic__ in the MQTT system is similar to a "channel" where messages can be sent and received. A __topic__ does not need to be created before it is used, and provides no enhanced services beyond organizing message flow in the system.
    - Publisher
      Any piece of software that sends information to an MQTT broker is considered a __publisher__ on whatever __topic__ that software is sending data to.
    - Subscriber
      A piece of software that contacts an MQTT __broker__ and requests updates on a specific __topic__ is considered a __subscriber__ to that __topic__. The __broker__ will attempt to deliver all messages from all __publisher__s to a __topic__ to all __subscriber__s of that __topic__.