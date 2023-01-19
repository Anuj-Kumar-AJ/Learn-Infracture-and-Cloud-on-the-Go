
# How to build simple image of a helloWord program in python

## Requirement
    1. Docker installed
    2. python installed

## Steps

- step 1: create a python file of name `hello.py`

- Step 2: Now its time to build docker file

    - choose which operating system you want your program to run instide contaner . I have choosed `alpine` image , which is small size and based on linux OS
    
    - check dockerHub to check the official mage name [dockerHub](https://hub.docker.com/_/alpine)
    - Lets create an docker file named `Dockerfile` --> must be have same name


- Step 3: Inside the docker file

    - `FROM`  -->  it defined which OS base you are choosing , our case alpine image
    - `WORKDIR`     --> it defined as working director of our containerise appliction
    - `COPY` --> It is used to copy the filed from one directory to another
    - `RUN`  --> It is used to run command when container is initilize to start
    - `CMD`  --> It is used to run command in  terminal as user defined
<br><br>
    - we first declare our operating system which run inside container
    - then we declare the working directory where our program initilize , this `run` command initilize in working directory
    - then we copy **previousFilesInsideOurDirectory** **filesPathInsideContainer** , as we have working directory inside container and our hello.py at same path we use `. . `
    - then the command `run` will run in our case i have seen the documentation for usage of [run command](https://hub.docker.com/_/alpine) , we install python3 in our container
    - CMD[ cliCode , PathOfFileFromWorkingDirectory] , so we just run python3 hellow.py , as our woringdirectory and the file both have same path


- Step 4: Save the Dockerfile 

- Step 5 : open terminal and run docker 
    `docker build -t imageName PathofDocerFile` <br>
        where -t --> tag and imageName is the name of image which will be formed by docker


# Congratulation you just build your own  docker image , you can run as many container with it and even orcustrate it using tools like kubernetes
