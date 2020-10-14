# barch
My Arch/BlackArch Linux flavor of Linux Dockerized

## usage

### Basic
`docker run -it brandoncamenisch/barch`

### Privileged docker and networking
`sudo docker run --pid=host --network host --privileged -v $PWD/.cache/$USER:$HOME -v /var/run/docker.sock:/var/run/docker.sock -it brandoncamenisch/barch`
