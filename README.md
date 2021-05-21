
# homebrew-kofj
Homebrew tap of [v2ray-kofj](https://github.com/v2ray/v2ray-kofj). This is a collection of tools developed and maintained by @kofj.

[TOC]
## Install
```shell
brew tap kofj/v2ray
```

## Tools

```bash
brew install v2ray-core
```
### Use v2ray-core
&emsp;&emsp;First, you should configure `/usr/local/etc/config.json`.

&emsp;&emsp;Then, to have launchd start v2ray-core now and restart at login:
```shell
brew services start v2ray-core
```
&emsp;&emsp;Or, if you don't want/need a background service you can just run:
```shell
v2ray -config=/usr/local/etc/config.json
```
&emsp;&emsp;More about v2ray: https://www.v2ray.com/
