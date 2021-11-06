# Docker for Lantern 

About Lantern:
- https://getlantern.org/
- https://github.com/getlantern/lantern-binaries

Lastest verified for Lantern latest @ 2021.11.06

## Default ports for docker image:
- 1070 tcp -> Http(s) proxy port
- 1080 tcp -> Socks5 proxy port
- 8080 tcp -> Lantern UI

## Pull from dockerhub:
```docker pull kilinger/lantern```

## Build yourself :
```docker build -t kilinger/lantern https://raw.githubusercontent.com/kilinger/lantern-docker/myself/Dockerfile```

## Run：
```docker run -itd --restart=always --name lantern -p 1070:1070 -p 1080:1080 -p 8080:8080 kilinger/lantern```


Use http://127.0.0.1:8080/lantern to access lantern UI (to monitor lantern status and upgrade to PRO version).
