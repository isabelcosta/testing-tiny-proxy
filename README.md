# Testing TinyProxy

## Description

This repo is used to test [TinyProxy](https://github.com/tinyproxy/tinyproxy) both as a proxy and a reverse proxy.

## Test

You may have to test this in root mode. My tests were made with a Debian machine.... [TODO]

### Architecture

![architecture-image](TinyProxyExp.png)

The test consists of 4 virtual machines within the same network... [TODO]

### IPs

| Client     | Proxy      | Reverse Proxy | Server  |
| ---------- | ---------- | ---------- | ---------- |
| 10.0.2.33  | 10.0.2.35  | 10.0.2.36  | 10.0.2.34  |

### Run

- First make sure the the server is working and there is communication between the client and the server
```
curl http://10.0.2.34:80
```

#### Step by step example

1. Run server
Because in my example I run a simple apache server, I use the following command:
```
/usr/local/apache2/bin/apachectl start
```

2. Load tinyproxy configuration files at proxy and reverse proxy

To load the configuration you just have to run `tinyproxy -c <configuration-file>`.
`load-config.sh` is a script to load the configuration file after stoping the proxy and before restarting the proxy.

2.1. Load Proxy configuration
```
sh load-config.sh proxy.conf
```

2.2. Load Reverse Proxy configuration
```
sh load-config.sh reverseproxy.conf
```

3. Run client

- Test a http request `curl --proxy http://<proxy-ip>:<proxy-port> http://<server-ip>:<server-http-port>`
```
curl --proxy http://10.0.2.35:8888 http://10.0.2.34:80
```

### How to test the system

- Check logging file

```
cat /var/log/tinyproxy/tinyproxy.log
```
