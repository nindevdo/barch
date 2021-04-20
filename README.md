# barch
My Arch/BlackArch Linux flavor of Linux Dockerized

## usage
`sudo docker run --restart unless-stopped --network host --privileged -v $PWD/.cache/barch:/home/barch -v /var/run/docker.sock:/var/run/docker.sock -it barch`
