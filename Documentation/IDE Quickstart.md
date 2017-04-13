# IDE Quick-Start


## Overview

  If users wish to customize their ESP8266 devices, they need a set of programs that work together in order to convert those programs into the appropriate binary formats and then write the programs into the chips. This document is an outline of the required pieces and how to use them together.

  
## Options

### Arduino
#### Overview
  The Arduino IDE is probably the most commonly used IDE for programming micro-systems, for now. The recent additions for external board support have made the IDE appicable to any toolchain involving these types of boards, but the feature set is still lacking, while both the GUI and menu systems are very simplistic. This can be as much of a hinderance as a benefit, but the package still works fine for the majority of users.
#### Process:
  1. Download the Arduino IDE for Win/Mac/*nix from [HERE](https://www.arduino.cc/en/main/software)
  2. Open the IDE and open the menu File --> Preferences
  3. In the __Additional Board Manager URLs:__ area, type
    -  ````http://arduino.esp8266.com/stable/package_esp8266com_index.json````
  4. Open the menu Tools --> Board --> Boards Manager, and search for "ESP"
  5. Choose the ESP8266 option and then click the __Install__ button
  6. You are now ready to create a new ESP program and upload it to the board!

#### Additional Requirements:
  - _Enable MQTT Integration_
    1. From the /MYBUTLER/Software/Arduino/ folder, copy the PubSubClient folder to your local Arduino library folder, usually _C:\Program Files (x86)\Arduino\libraries_ or _C:\Users\$CURRENT_USER\Arduino\Arduino\libraries_
	2. In your ESP8266 program, include this line at the beginning:
	  - ````#include <PubSubClient.h>````
	3. Your Arduino IDE programs for the ESP can now speak the MQTT protocol!

