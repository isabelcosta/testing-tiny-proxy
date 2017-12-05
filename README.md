# Testing TinyProxy

### Description

This repo is used to test [TinyProxy](https://github.com/tinyproxy/tinyproxy) both as a proxy and a reverse proxy.

### Test

#### Architecture

![architecture-image](TinyProxyExp.png)

The test consists of 4 virtual machines within the same network... [TODO]

#### IPs
- Client - 10.0.2.33
- Proxy - 10.0.2.35
- Reverse Proxy - 10.0.2.36
- Server - 10.0.2.34

#### Testing commands

- Test http request `curl --proxy http://<proxy-ip>:<proxy-port> http://<server-ip>:<server-http-port>`
```
curl --proxy http://10.0.2.35:8888 http://10.0.2.34:80
```

- Check logging file

```
cat /var/log/tinyproxy/tinyproxy.log
```
