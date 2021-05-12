# barch
### @see http://nindevdo.com/docker,/linux/2021/05/11/docker-daily-driver.html
```
                   -`
                  .o+`                 
                 `ooo/                 
                `+oooo:                
               `+oooooo:               
               -+oooooo+:              
             `/:-:++oooo+:             
            `/++++/+++++++:            
           `/++++++++++++++:           
          `/+++ooooooooooooo/`         
         ./ooosssso++osssssso+`
        .oossssso-````/ossssss+`
       -osssssso.      :ssssssso.
      :osssssss/        osssso+++.
     /ossssssss/        +ssssooo/-
   `/ossssso+/:-        -:/+osssso+-
  `+sso+:-`                 `.-/+oso:
 `++:.                           `-/+/
 .`                                 `/
 ```
Arch/BlackArch flavor of Linux Dockerized

## usage
## privileged docker and networking
`sudo docker run --pid=host --network host --privileged -v $PWD/.cache/$USER:$HOME -v /var/run/docker.sock:/var/run/docker.sock -it nindevdo/barch`

`sudo docker run --restart unless-stopped --network host --privileged -v $PWD/.cache/barch:/home/barch -v /var/run/docker.sock:/var/run/docker.sock -it barch`
