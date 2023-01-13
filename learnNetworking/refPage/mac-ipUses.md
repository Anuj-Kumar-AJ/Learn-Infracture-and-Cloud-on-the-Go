# lets take an synerio ,  one computer have to send data to another computer another part of world, then how and when mac address and ip address is used to transfer data, tell me using this example.


In the scenario you described, one computer would send data to another computer located in another part of the world over the internet. The data transfer process would involve the use of both MAC addresses and IP addresses.

The first step in the process would be for the sending computer to determine the destination computer's IP address. This address is a unique numerical label assigned to each device connected to a network, and it is used to identify the device at the Network Layer of the OSI model. Once the sending computer has the destination computer's IP address, it can package the data into packets and send them to the destination.

When the packets reach the destination computer's local network, the Data Link Layer comes into play. The Data Link Layer uses the destination computer's MAC address, a unique hardware address assigned to each device, to identify the destination device and deliver the packets to it.

The MAC address is used to identify the device on the local network, and the IP address is used to identify the device on the global network.

To give an example of this process in action, let's say the sending computer's IP address is 192.168.1.100 and the destination computer's IP address is 172.16.30.50. The sending computer would package the data into packets and send them to the destination computer's IP address. As the packets travel through the internet, they would be routed through various networks and devices, each one using the destination IP address to determine where the packets should be sent next.

When the packets reach the destination computer's local network, the router on that network would use the destination computer's MAC address to deliver the packets to the correct device. The destination computer's Data Link Layer would then reassemble the packets and pass them on to the Network Layer for further processing.

In summary, the IP address is used to identify the device on the global network and the MAC address is used to identify the device on the local network. And the Data Link layer is responsible for providing a reliable link between two devices on a network and thus uses MAC address for this purpose.