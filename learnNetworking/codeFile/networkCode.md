
<h1>This  file contain all the codes needed to observe network protocol </h1>

-------------------------------------------------------------------------------------
<br><br><br>
# Related to Data packet 


1. `curl` command   -->  [check detail](../refPage/cURL.md) <br>
   - `curl [options] [URL]`   <br>
   where URL --> the URL is the address of the resource you want to transfer data to or from <br>
   options  --> a series of flags that modify the behavior of the command <br>
   
            -X or --request: Specifies the request method to use (GET, POST, PUT, DELETE, etc.).

            -d or --data: Sends data in the request body.

            -G or --get: Sends the request using the GET method and appends the data to the URL.

            H or --header: Sends a custom header in the request.

            -i or --include: Includes the response headers in the output.

            -o or --output: Saves the response to a file.

            -u or --user: Sends the request with basic authentication.

            -I or --head: Sends a HEAD request and returns only the response headers.

            -L or --location

2. tcp connection states
    - `netstat -ap TCP` 

3. prints out a description of the contents of packets on a network interface that
matches the boolean expressioni.
    -  `tcpdump`

1. to list network interface in linux
    - `ip link show `

2. to list network interface address in linux 
    - `ip address show`

3. To observe the IP headers of packets on a specific interface, you can use the following command:
    - `sudo tcpdump -n -e -tttt -vvv -i interface` <br>
    where:
        -n : Do not resolve hostnames or ports
-e : Include link-layer header
-tttt : Timestamp format
-vvv : Verbosity level
-i interface : Specify which interface to listen on

    ```
        example:-
            sudo tcpdump -n -e -tttt -vvv -i eth0
             to observe the IP headers of packets on the eth0 interface,
    ``` 

1. to know more about tcpdump useCases [check this out](tcpdumpDetail.md)

2. to display current configuration of network interface
    - `ifconfig`        --> to watch all the interface info for unix or linux based system only
    - `ifconfig interfaceName`    --> to watch info about perticular interface with interface name `interfaceName`

    - `ipconfig`    --> to watch all the interface info in Windows OS  and i fused for linux or unix system it will show moe info then that if use of `ifconfig`


1. TO see local Routing table
   1. `netstat -n -r `  --> to see detain information [click](netstat%20-nr.md)

1. Address Resolution Protocol for IPv4 --> map ip address with mac address
   1. `arp [-n] [-v]` <br>
      - "-n" option causes the command to display IP addresses in numeric form, rather than resolving them to hostnames <br>
      - The "-v" option causes the command to display the ARP table in a verbose format, showing additional information such as the interface name and the type of entry.

    2. `arp -a` <br>
        - to resolve ip address to hostName before displaying
    3. `ip neigh` <br>
        - This command will display the same information as the "arp" command, but with a slightly different format
        - It shows the IP address, the device name, the link-layer address (MAC address), and the state of the entry (REACHABLE).

    4. `arping`
   
1. use tcpdump to view all the ARP requests happening on the local network
   1. `sudo tcpdump -i interfaceName arp -vvv`
        - get interface name from `ipconfig` or `ifconfig`


-------------------------------------------------------------------------------------
# Linux networking

1. to check the socket connection [for detail click](../refPage/socketConnection.md)
   1. `netstat -an` --> display information such as the protocol, local and remote addresses, and the state of each socket.<br>
   2. `lsof -i` --> This will display information such as the protocol, local and remote addresses, and the state of each socket.<br>
   3. `ss -a`   --> display information such as the protocol, local and remote addresses, and the state of each socket.<br>
   4. `tcpdump -i eth0 -n 'tcp'`    --> the source and destination IP addresses, source and destination ports, and other details about the packets.<br>
   5. `socat TCP-LISTEN:8080,reuseaddr,fork -`  -->create a TCP socket and listen on port 8080. The reuseaddr option allows the socket to be bound to a port that is already in use, and the fork option allows multiple connections to be accepted on the same socket.

2. to trace system calls and signals made by a program. 
    1. Tracing all system calls made by a program:
        - `strace program_name`
    2. Tracing a specific system call:
        - `strace -e trace=write program_name`
    3. Saving the trace output to a file:
       -  `strace program_name > trace.txt`
    4. Tracing child processes:
        - `strace -f program_name`
    5 .Tracing only certain system calls and its return value:
        - `strace -e trace=open,read -s 80 program_name`
    6. Tracing only the time of a system call execution:
        - `strace -T -e trace=open program_name`
    7. Tracing only the count of system calls made:
        - `strace -c program_name`
    8. Tracing only the signal received by a program:
        - `strace -e signal= signal_number program_name`
