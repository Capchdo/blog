# 爆炸记录

## 2025年9月17日上午：无法加载通知 JSON

服务器硬盘满了，导致无法处理网络请求。

13:53 已恢复，不过丢失了以往通知数据。

## 2024年11月19日下午：MS Edge 131+ 无法加载通知

我们使用 [ky](https://github.com/sindresorhus/ky/) 处理网络请求。这个包的旧版本违反了某个规范，导致无法在 131.0.2903.51 等版本的 Edge 中使用（MS Edge 130.0.2849.56 或更低版本正常，另外有同学回忆十一月初还没问题）。更新 ky 后即解决问题。

https://github.com/sindresorhus/ky/issues/467

Firefox 等其它浏览器不受影响。

## 2024年4月13日晚上

大约22:40开始504，重启无效，可能是证书问题。

22:51恢复，确实是给 Traefik 的证书不对。

## 2024年3月5日上午

又 Gateway Timeout 了。

重启后恢复。

## 2024年2月7日中午

最晚12时开始，通知空白，只剩CDN缓存。服务器连不上SSH，供应商控制台显示CPU、内存使用率大概都在90%以上。13:26重启完就好了。

## 2024年2月4日中午

13:50 开始 504 Gateway Timeout，现象同之前。重启多次未恢复。

从时间上看，之前的证书与今天13:44:35过期，不过不确定具体机制。

15:12更新了证书，恢复。

## 2024年1月29日下午

现象同上次，`sudo reboot`恢复。

## 2024年1月2日上午

2024-01-02T06:58:38+08:00 Traefik 自动重启，成功停止，但启动时卡住，所有服务在 CDN 缓存过期后 504 Gateway Timeout。

重启时提示“Error: OCI runtime error: crun: cannot open status file: No space left on device”，原因是 inode 满了。

```shell
$df --inodes --human-readable
Filesystem     Inodes IUsed IFree IUse% Mounted on
…
tmpfs             43K   43K    15  100% /run/user/1000

$ sudo du --summarize --inodes /run/user/1000/*
1       /run/user/1000/bus
171     /run/user/1000/containers
49      /run/user/1000/crun
2       /run/user/1000/dbus-1
6       /run/user/1000/gnupg
42943   /run/user/1000/libpod
13      /run/user/1000/netns
1       /run/user/1000/pk-debconf-socket
2       /run/user/1000/podman
1       /run/user/1000/snapd-session-agent.socket
73      /run/user/1000/systemd
```

进一步深入，发现`/run/user/1000/libpod/tmp/`占大头。因此直接重启服务器，正常了，此时是12时。

## 2023年12月19日晚上

bulletin-issues-transferred 容器状态异常，并且删除重建仍异常。最后`sudo reboot`了一下。
 
## 2023年12月10日上午

504 Gateway Timeout，但 dashboard 还能打开一点（清除 CDN 缓存后也 504），且 HTTP → HTTPS 正常，而且服务器还能正常收到一些请求。

```
HTTP/2.0 504 Gateway Timeout
accept-ranges: none
cache-control: no-cache
content-length: 15
content-type: text/plain
date: Sun, 10 Dec 2023 02:06:04 GMT
ohc-cache-hit: ts7un82 [1], qdix116 [0]
ohc-file-size: 15
server: JSP3/2.0.14
x-cache-status: MISS
x-error-info: External_SSLConnection

Gateway Timeout
```

原因不明。重启服务器，重置`podman`，重新安装证书，在`docker-compose.yml`中指明网络，然后就正常了。

## 2023年11月14日晚

11月起改用`podman`管理服务。

日常`apt upgrade`后，不小心用不规范的方法重启了 podman 服务（这既无必要也不合理），导致 podman 状态异常，无法完全工作。于是`podman system reset`，再重启各服务。重置也删除了缓存，找回所有缓存花了约 50 min。
