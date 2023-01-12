
<h1>This  file contain all the codes needed to observe network protocol </h1>

1. tcp connection states
    - `netstat -ap TCP` 

1. prints out a description of the contents of packets on a network interface that
matches the boolean expressioni.
    -  `tcpdump`

1. to list network interface in linux
    - `ip link show `

1. to list network interface address in linux 
    - `ip address show`

1. To observe the IP headers of packets on a specific interface, you can use the following command:
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


