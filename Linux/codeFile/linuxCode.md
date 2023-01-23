# general linux operating command

1. difference between find . and ls -a check [this](../refPages/find-vs-ls.md)
<br>
2. to check file permisssion 
   1. `ls -l fileName`
   2. `stat fileName`
   3. `getfacl fileName`
<br>   
3. to mount fileSystem manually
   1. `mount -o rw,remount /`<br>
<br>
4. To check file ownership and permission
   1. `ls -l path_of _the_file`
<br>
5. To see all the file in a directory 
   1. `tree -L noOfLevel` 
<br>
6. list all the content of the directory
   1. `ls`
<br>
7. print path of present/ current working dircetory
   1. `pwd`
<br>
8. change directory ( `cd /.` or `cd .` --> previous directory)
   1. `cd forwardFile`
<br>
9.  to clear the terminal screen
    1.  `clear`
<br>
10. to print file details
    1.  `cat fileName`
<br>
11. to see manual page of a command
    1.  `man command`
<br>
12. find abput differnt information about file system or distribution
        1. `lsb_release -a`
        2. `cat /etc/os-release`
        3. `uname -a`
        4. `lscpu`  ---> detaild cpu info
        5. `lsmem` --> detailed ram info
            get offline memery  --> currently used
            get online memeory  --> currtly available
        6. to check nvidia gpu info
           1. `nvidia-smi`
<br>
13. to check the system logs of all the processes with syslog
     1.  find the syslog file useng file command `find / -name 'syslog'` 
         then go to the directory which have vars in its path then print `syslog`
<br>
14. piping command ( `|` )
    1.  this ia used to pipe one output to another eg, `cat /var/log/syslog | less` --> give `/var/log/syslog output to less as input. and output the file data on terminal frame by fram , you can change frame using spacebar. frame is number of lines fir on screen
<br>
15. to print data of file frame by frame () --> type spacbar to chanege frame 
    1.  `cat fileName | less`  --> frame is number of line of data that fit on screen
<br>
16. `less` or `more` --> to quite it type `q`
<br>
17. to search through file 
    1.  `cat fileName | grep nametoSearch`
<br>
18.to Print environmental variable
   1. `echo $environmentalVariableName`
   2. every environmetal varuiable `env`
<br>
19.  to add user in linux
    1.  `useradd -m userName`
    2.  after that add the user password
        1.  `passwd userName
<br>
20.to modify user account
   1. `usermod`
<br>  
21.  to add user to certain group
    1.  `usermod -aG groupName userName`
<br>
22.TO switch user
   - switch user to root
     - `su`
   - switch user to guist user
     - `su - guistUserName`
<br>
23.  to see current user
    1.  `whoami`
<br>
24.To see all the users
   1. `cat /etc/passwd` --> this prints allthe users, in each line
   2. `cut -d: -f1 /etc/passwd`  --> this prints only username of every user
<br>
25.  to add a new group
    1.  `groupadd groupName`
<br>
26.  To get information about different databases which is configured in system is
   - `getent database enteryToRetrieve`
   - where database can be `passwd, group, hosts, and services etc`
   - eg, to retrieve group information of groupName:- anuj
     - `getent group anuj`
     - 
27. to run previous command with sudo previlaged                                 
   - `sudo !!`

