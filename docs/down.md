# 爆炸记录

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
