# Maven property demo

This demo shows a problem that property interpolation does not work in the proxy port 
of settings.xml.

## Overview
This demo works as follows.

### 0. Execute maven-help-plugin to download required plugins without proxy.
```
mvn help:effective-settings -X
```

### 1. Export two environment variables
```bash
export MAVEN_PROXY_HOST_STRING=proxy.foo.com
export MAVEN_PROXY_PORT_INT=18080
```

These variables are used in settings.xml for proxy settings.

```xml
    <proxy>
      <id>my_proxy</id>
      <active>true</active>
      <protocol>http</protocol>
      <host>${env.MAVEN_PROXY_HOST_STRING}</host>
      <port>${env.MAVEN_PROXY_PORT_INT}</port>
      <nonProxyHosts>local.net|some.host.com</nonProxyHosts>
    </proxy>
```

### 2. Execute maven-help-plugin to show effective settings.xml.

```bash
mvn -s /root/settings.xml help:effective-settings -X
```

The result is as follows.

```xml
  <proxies>
    <proxy>
      <port>0</port>
      <host>proxy.foo.com</host>
      <nonProxyHosts>local.net|some.host.com</nonProxyHosts>
      <id>my_proxy</id>
    </proxy>
  </proxies>
```

`${env.MAVEN_PROXY_HOST_STRING}` is replaced with `proxy.foo.com`, 
but `${env.MAVEN_PROXY_PORT_INT}` is not replaced with `18080`.

## Usage
```bash
$ docker run -v ~/.m2/repository:/root/.m2/repository $(docker build -q .)
```
