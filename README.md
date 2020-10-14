# barch
My Arch/BlackArch Linux flavor of Linux Dockerized

## usage

### Basic
`docker run -it brandoncamenisch/barch`

### Privileged docker and networking
`sudo docker run --user $(id -u);$(id -g) --pid=host --network host --privileged -v $PWD/$USER:$HOME -v /var/run/docker.sock:/var/run/docker.sock -it brandoncamenisch/barch`
