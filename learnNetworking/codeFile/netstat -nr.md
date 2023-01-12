The netstat -nr command is used to display the routing table of a system running Unix-like operating systems like Linux, macOS, and other. It gives a detailed view of the current state of the routing table and the routes that have been added to it.

When run without any arguments, the netstat command will give a summary of the current network connections on a system. The -r flag is used to display the routing table instead. The -n flag is used to display the IP addresses and port numbers in numerical form, rather than resolving them to hostnames and service names.

When you run the netstat -nr command, the following information is displayed:

    Destination: The destination network or host for the route.

    Gateway: The IP address of the next hop router for this route.

    Flags: Routing flags such as "U" for up, "H" for a host route, "G" for a gateway route.

    Refs: Number of references to the route.

    Use: Number of packets sent using this route.

    Netif: The network interface through which packets are sent.

    Destination: The first column shows the destination of the routing entry, It can be an IP address of an individual host or a subnet.

    Gateway: The next column shows the gateway or router that packets are sent to for reaching the destination.

    Flags: The third column shows the flags which defines the state of the route. Some common flags are "U" for up, "H" for a host route and "G" for a gateway route.

    Refs: The fourth column shows the number of references for the route.

    Use: The fifth column shows the number of packets sent using this route.

    Netif: The last column shows the network interface through which packets are sent on this route.