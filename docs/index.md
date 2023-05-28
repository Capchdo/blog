# HaoBIT

!!! tip "捧读"

    - 还在为错过学校通知而发愁吗？
    - 还在为找不到要打开学校内网页面而担忧吗？
    - 专为 BITers 设计的导航网站——[HaoBIT][haobit] 来了！

    欢迎加入，同开发者一起，助力 HaoBIT 成长！

目前有如下模块。

- :material-home: **[欢迎 Home][haobit]**

  - 搜索：搜索互联网。

  - 天气：从[天气网](https://www.tianqi.com/beijing/)获取的近日天气。

  - [通知][notice]：汇总 BIT 各种网站的通知。[^bulletin-issues-transferred]

    单击小标题“通知”二字可[筛选来源](https://haobit.top/dev/site/notice/)，也可到“[Profile][profile] → 配置 → 通知”修改默认显示范围。

    其原理是每日 8–21 时运行 [Bulletin Issues Transferred](https://github.com/YDX-2147483647/bulletin-issues-transferred/)，然后显示到这个网站。这部分采用 MIT License，同时提供 CLI、[RSS](./rss.md)、i北理 WebHook 机器人等方式。[^bulletin-issues-transferred]

  若想关闭其中一些模块，可到“[Profile][profile] → 配置 → 首页”修改。

- :octicons-gear-24: **[配置 Profile][profile]**

  配置 HaoBIT 网页：启用哪些模块，显示哪些来源的通知、……

  配置分层。若顶层不打勾，则内层采用默认配置；若想修改，需先打勾。

  注意“采用默认配置”与“不采用默认配置，但配置与默认相同”意义不同——我们更新默认配置时，前者会跟随变化，后者不会。

- :material-routes: **[导航 Portal][portal]**

  在校内也能用的 [WebVPN](https://webvpn.bit.edu.cn) 镜像。

  我们抄录了 WebVPN 目录中的网站列表，记下了校内、校外两个版本的链接，可随时切换。

  抱歉因为跨域限制，我们无法检测您在校内还是在校外，还请手动切换。可在“[Profile][profile] → 配置 → URL 默认类型”修改默认在何处。

- :material-tools: **[工具 Tools][tools]**

  一些工具，可到 QQ 交流群 [757113685](https://jq.qq.com/?_wv=1027&k=j13nOAhr) 毛遂自荐。

  另请参见 [best-of-BITs (bytes)](https://github.com/YDX-2147483647/best-of-bits/)。

- :material-view-grid: **[网站 Sites][sites]**

  常用网站，正在迁移。

- :material-book-multiple: **[博客 Blog][blog]**

  HaoBIT 相关新闻、说明书。

[^bulletin-issues-transferred]: Bulletin Issues Transferred 还可脱离本项目自主运行。Bulletin Issues Transferred 是这个系列最早的项目之一，[2021年12月6日发起](https://github.com/YDX-2147483647/bulletin-issues-transferred/commit/6119c3207bb30ad865d2863a2cdb1321b5456023)，2023年2月23日 [GitHub 仓库](https://github.com/YDX-2147483647/bulletin-issues-transferred/)获得了第一颗星，而 [Gitee 仓库](https://gitee.com/YDX-2147483647/bulletin-issues-transferred/)至今还没被人发现。

[haobit]: https://haobit.top
[profile]: https://haobit.top/dev/site/profile
[portal]: https://haobit.top/dev/site/portal
[tools]: https://haobit.top/dev/site/tools
[sites]: https://haobit.top/dev/site/sites
[blog]: https://haobit.top/dev/site/blog
[notice]: https://haobit.top/dev/site/notice/
