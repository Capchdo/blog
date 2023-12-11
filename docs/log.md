# 更新日志

## 2023年12月11日晚上

`haobit.top/dev/site/image/` → `img.haobit.top`，旧地址保留 302 Found。

## 2023年12月8日上午

动态加载的配置编辑器（[json-editor](https://www.npmjs.com/package/@json-editor/json-editor)）现在也从 jsDelivr 改成自己打包了。另外 json-editor 采用 [Bootstrap](https://getbootstrap.com/docs/5.3/getting-started/introduction/) 样式，之前和网页其它部分不完全兼容。现在利用 [Sass](https://sass-lang.com/) 和 [`@layer`](https://developer.mozilla.org/en-US/docs/Web/CSS/@layer) 限制了 Boostrap 的作用范围，不再冲突了。

至于 [rssto.email](https://www.rssto.email/) 失效的问题，仍未完全实现邮件订阅通知，诸位可在 [rss/ · Capchdo/blog · Discussion #6](https://github.com/Capchdo/blog/discussions/6#discussioncomment-7773895) 查看详情。

## 2023年12月7日凌晨

删除了 CSS 中[`@import`](https://developer.mozilla.org/en-US/docs/Web/CSS/@import)的 [jsDelivr](https://www.jsdelivr.com/)，改为直接打包。原先误以为`@import`会异步加载，才没打包。
