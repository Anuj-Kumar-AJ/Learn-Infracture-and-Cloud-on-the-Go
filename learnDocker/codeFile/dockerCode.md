# Docker Codes

1. To run an container from image
    - `docker run imageName`
2. To list all the running containers
    - `docker ps`
3. to list all the containers( running and stoped both)
    - `docker ps -a`
4. to remove the containers from system
    - `docker rm containerName`
    - `docker rm containerTag`
5. to remove the image from the system
    - `docker rmi imageName`
6. to pull the image but not run the contianer from it
    - `docker pull imageName`
7. TO execute a code inside running container.
    - `docker exec containerName codeToExecute`
8. To start container in attached mode 
    - `docker run -it imageName`
9. To start container in detached mode 
    - `docker run -d imagename`
10. To attach terminal session with running detached container
    - `docker attach containerID`
11. To stop a container
    - `docker stop containerID`
12. TO list all the images
    - `docker images`
13. TO create docker volume
    - `docker volume create volumeName`
14. to attach the docker volume to a contianer
    - `docker run -v volumeName:pathToDataStorageInsideContainer imageName`   --> volume mounting
    - `docker run -v pathWhereWeWantToStoreData:pathToDataStorageInsideContainer imageName`    --> bind mounting
15 to attach docker volume new way is 
    - `docker run --mount type=bind source=pathWhereWeStoreData target=pathinsideContainer imageName`
16. docker network
    - to create bridge network( it is default network)  --> `docker run ImageName` 
    - to create none network --> `docker run InageName --network=host`
    - to create None network --> `docker run InageName --network=none`
    - to see all the docker network
        - `docker network ls`
    - to create custom docker network 
        - `docker network create --driver=networkType --subnet=subnetAddress custom-isolated-network`
    - docker have build-in DNS server , so it is best to use name rather then ip address for communication
    - to delete a docker network
        - `docker network rm networkName`

17. docker registory to store private images --> import the `registory image` which is used to store the private images
    - to create a container for registory
       -  `docker run -p 5000:5000 -d registry registry:2`
    - `docker image tag myimage localhost:5000/my-image`
    - to push image in regisory
        - `docker push localhost:5000/myimage`
     - to pullimage in regisory
        - `docker pull localhost:5000/myimage`
