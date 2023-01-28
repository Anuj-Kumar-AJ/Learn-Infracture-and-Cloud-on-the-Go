# general linux operating command


1. To check all the system resource usage (cpu,ram, etc) in linux
   1. `top`
   2. `htop`
   3. `ps`
   4. `free`
   5. `vmstat`
   6. `iostat`
   7. `netstat`


2. difference between find . and ls -a check [this](../refPages/find-vs-ls.md)
<br>
1. to check file permisssion 
   1. `ls -l fileName`
   2. `stat fileName`
   3. `getfacl fileName`
<br>   
1. to mount fileSystem manually
   1. `mount -o rw,remount /`<br>
<br>
1. To check file ownership and permission
   1. `ls -l path_of _the_file`
<br>
1. To see all the file in a directory 
   1. `tree -L noOfLevel` 
<br>
1. list all the content of the directory
   1. `ls`
<br>
1. print path of present/ current working dircetory
   1. `pwd`
<br>
1. change directory ( `cd /.` or `cd .` --> previous directory)
   1. `cd forwardFile`
<br>
1.  to clear the terminal screen
    1.  `clear`
<br>
1.  to print file details
    1.  `cat fileName`
<br>
1.  to see manual page of a command
    1.  `man command`
<br>
1.  find about differnt information about file system or distribution
        1. `lsb_release -a`<br>
        2. `cat /etc/os-release`<br>
        3. `uname -a`<br>
        4. `lscpu`  ---> detaild cpu info<br>
        5. `lsmem` --> detailed ram info<br>
            get offline memery  --> currently used<br>
            get online memeory  --> currtly available<br>
        6. to check nvidia gpu info<br>
           1. `nvidia-smi`<br>
<br>
1.  to check the system logs of all the processes with syslog
     1.  find the syslog file useng file command `find / -name 'syslog'` 
         then go to the directory which have vars in its path then print `syslog`
<br>
1.  piping command ( `|` )
    1.  this ia used to pipe one output to another eg, `cat /var/log/syslog | less` --> give `/var/log/syslog output to less as input. and output the file data on terminal frame by fram , you can change frame using spacebar. frame is number of lines fir on screen
<br>
1.  to print data of file frame by frame () --> type spacbar to chanege frame 
    1.  `cat fileName | less`  --> frame is number of line of data that fit on screen
<br>
1.  `less` or `more` --> to quite it type `q`
<br>
1.  to search through file 
    1.  `cat fileName | grep nametoSearch`
<br>
1.to Print environmental variable
   1. `echo $environmentalVariableName`
   2. every environmetal varuiable `env`
<br>
1.   to add user in linux
    1.  `useradd -m userName`
    2.  after that add the user password
        1.  `passwd userName
<br>
1.to modify user account
   1. `usermod`
<br>  
1.   to add user to certain group
    1.  `usermod -aG groupName userName`
<br>
1. TO switch user
   - switch user to root
     - `su`
   - switch user to guist user
     - `su - guistUserName`
<br>
1.   to see current user
    1.  `whoami`
<br>
1. To see all the users
   1. `cat /etc/passwd` --> this prints allthe users, in each line
   2. `cut -d: -f1 /etc/passwd`  --> this prints only username of every user
<br>
1.   to add a new group
    1.  `groupadd groupName`
<br>
1.   To get information about different databases which is configured in system is
```   - `getent database enteryToRetrieve`
   - where database can be `passwd, group, hosts, and services etc`
   - eg, to retrieve group information of groupName:- anuj
     - `getent group anuj`
```

29. to run previous command with sudo previlaged                                 
   - `sudo !!`

30.  TO change file permission
    1.  chmod +x , +r , +w   --> means give executable , read, write permission respectively.
    2. chmod -x , -r , -w   -->  means remove the executable, read, write permission respectively 
    3. chmod u+x , u+r, u+w  --> change in user permission
    4. chmod g+x , g+r, g+w  --> change in group permission
    5. chmod o+x , o+r, o+w  --> change in others permission
    6. chmod +x , +r , +w    --> change in user and group and others permission by giving permission for... executable, read, write.
    7. chmod -x , -r , -w    --> change in user and group and others permission by removing permission for... executable, read, write.
    8. now lets see the syntax for change in permission
      - `chmod changePermission fileName`
        - eg, `chmod u+x test.sh`
 
31.  To run multiple commands
    1. use `&&` --> `command1 && command2`
    2. use `;` --> `command1; command2`

32.  to see the status of the service                                              
     - `sudo systemctl status serviceName`                                       

33.  to stop a service
    1.  `sudo systemctl stop serviceName`

34.  to start a sertvice
    1.  `sudo systemctl start serviceName`
35.  to restart a service
    1.  `sudo systemctl restart serviceName`

36.  To fine tune how much system resource we assign to certain group of services.
    1.  we use `cgroup` or `control group`

37. To see info about any file or executable file
    - `file filePath`

38. To see the time required to run 
    - `time command` --> tiem for command
    - `time Codefile` --> time require to run tis code file
    





