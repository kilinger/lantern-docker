# Docker for Lantern 

About Lantern:
- https://getlantern.org/
- https://github.com/getlantern/lantern-binaries

Lastest verified for Lantern 6.7.1 @ 2021.07.04

## Default ports for docker image:
- 1070 tcp -> Http(s) proxy port
- 1080 tcp -> Socks5 proxy port
- 8080 tcp -> Lantern UI

## Pull from dockerhub:
```docker pull xiaoqingfeng999/lantern```

## Build yourself :
```docker build -t xiaoqingfeng999/lantern https://raw.githubusercontent.com/xiaoqingfengATGH/lantern/master/Dockerfile```

## Run：
```docker run -itd --restart=always --name lantern -p 1070:1070 -p 1080:1080 -p 8080:8080 xiaoqingfeng999/lantern```


Use http://127.0.0.1:8080/lantern to access lantern UI (to monitor lantern status and upgrade to PRO version).
