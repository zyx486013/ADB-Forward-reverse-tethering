Using the reverse proxy feature of v2ray/Xray to connect to the network through adb forward, with Computer A providing the network, Android Phone B connected to the computer via USB, running V2rayNG and enabling the hotspot, and Phone C running V2rayNG. Devices capable of configuring V2ray, such as iOS systems, may also be used via iproxy port forwarding, but it has only been tested on Android phones. The following drawbacks are noted:

Drawbacks:
1.The tested Android Phone B is a Redmi K20 Pro with Android 11 and MIUI 12.5.6, running V2rayNG 1.8.5. It disconnects automatically after about ten seconds, and reconnecting is ineffective; a bat script must be re-executed.
2.Android Phone B cannot connect to the network; only Phone C can.
3.The IP address of the hotspot changes each time it is opened on Android Phone B, requiring Phone C to update the address configuration in V2rayNG.

Operation Steps:
1.Connect the phone to the computer with a USB cable and enable USB debugging.
2.Install v2rayNG*.apk on the Android phone.
3.On Android Phone B, import config Phone.json into V2rayNG, then click to run and open the Wi-Fi hotspot.
4.On Computer A, click start.bat. If prompted on the phone to allow USB debugging, click to allow.
5.Phone C connects to the hotspot of Android Phone B and notes the gateway IP of the hotspot. In V2rayNG on Phone C, create a new Vmess node: the address is the gateway IP, port 15000, user ID: be9e66f6-c4d9-4ea1-a743-b09afcd3dbef, encryption method auto, and other settings remain unchanged.
6.Phone C connects to the node.