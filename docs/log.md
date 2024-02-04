# 更新日志

## 2023年12月15日上午：`uptime.haobit.top`

开设了 [BIT 网站的非官方监控](https://uptime.haobit.top/status/server)。

## 2023年12月12日上午：`dev.haobit.top`等

- 开设了[`dev.haobit.top`](https://dev.haobit.top)，用于内部测试。
- 未正常加载时提示。

## 2023年12月11日晚上至2023年12月12日凌晨：简化 URL

- `haobit.top/dev/site/image/` → `img.haobit.top/`
- `haobit.top/dev/feed.rss` → `haobit.top/feed.rss`

旧地址保留 302 Found，将来会改为 301 Moved Permanently。

## 2023年12月8日上午：改善配置编辑器，邮件

动态加载的配置编辑器（[json-editor](https://www.npmjs.com/package/@json-editor/json-editor)）现在也从 jsDelivr 改成自己打包了。另外 json-editor 采用 [Bootstrap](https://getbootstrap.com/docs/5.3/getting-started/introduction/) 样式，之前和网页其它部分不完全兼容。现在利用 [Sass](https://sass-lang.com/) 和 [`@layer`](https://developer.mozilla.org/en-US/docs/Web/CSS/@layer) 限制了 Bootstrap 的作用范围，不再冲突了。

至于 [rssto.email](https://www.rssto.email/) 失效的问题，仍未完全实现邮件订阅通知，诸位可在 [rss/ · Capchdo/blog · Discussion #6](https://github.com/Capchdo/blog/discussions/6#discussioncomment-7773895) 查看详情。

## 2023年12月7日凌晨：改善缓存

删除了 CSS 中[`@import`](https://developer.mozilla.org/en-US/docs/Web/CSS/@import)的 [jsDelivr](https://www.jsdelivr.com/)，改为直接打包。原先误以为`@import`会异步加载，才没打包。
