# barch
Arch/BlackArch flavor of Linux Dockerized

## usage
`docker run -it brandoncamenisch/barch`
`barch-install.sh`

## privileged docker and networking
`sudo docker run --pid=host --network host --privileged -v $PWD/.cache/$USER:$HOME -v /var/run/docker.sock:/var/run/docker.sock -it nindevdo/barch`
