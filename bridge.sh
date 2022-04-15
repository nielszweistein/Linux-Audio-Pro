#!/bin/bash
# make the script executable with chmod +x

bridge1="Discord"
bridge2="Firefox"
bridge3="Modular"
bridge4="Micro"
bridge5="Desktop"
bridge6="Streaming"


# DISCORD
pacmd load-module module-jack-sink client_name=$bridge1-sink channels=2

# FIREFOX
pacmd load-module module-jack-sink client_name=$bridge2-sink channels=2

# MODULAR
pacmd load-module module-jack-source client_name=$bridge3-source channels=2
pacmd load-module module-jack-sink client_name=$bridge3-sink channels=2

# MICRO
pacmd load-module module-jack-source client_name=$bridge4-source channels=2

# DESKTOP
pacmd load-module module-jack-sink client_name=$bridge5-source channels=2

# STREAMING-OBS
pacmd load-module module-jack-source client_name=$bridge6-source channels=2



#
# YOU CAN CREATE MANY NAMED BRIDGE  JACK --> PA
#pacmd load-module module-jack-source client_name=$bridgeXXX-source channels=2
#
# YOU CAN CREATE MANY BRIDGE  PA --> JACK
#pacmd load-module module-jack-sink client_name=$bridgeXXX-sink channels=2
#

