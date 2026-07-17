# Halo Theme Flex-block

> 适用于 Halo 2.x 的主题（基于 Thymeleaf 模板引擎）。

## 预览

#### 在线预览

[https://guiyunweb.com/](https://guiyunweb.com/)

# 预览截图
![home](https://image.guiyunweb.com/2021/home_1636015138714.png?imageMogr2/format/webp/interlace/1/quality/090)

![page](https://image.guiyunweb.com/2021/page_1636015135953.png?imageMogr2/format/webp/interlace/1/quality/090)

本主题由 https://github.com/miiiku/flex-block 主题移植而来
该主题的原作者为 miiiku，非常感谢做出这么优秀的主题。

## 环境要求

- Halo `>=2.20.0`
- 评论功能需安装 **halo-comment** 插件（评论组件 `<halo:comment>`）
- 友链页面需安装 **Links（链接管理）** 插件（注入 `groups` 变量）

## 目录结构

```
├── templates/
│   ├── layout.html          # 布局骨架（<include> + <slot>）
│   ├── index.html           # 首页
│   ├── post.html            # 文章页
│   ├── page.html            # 自定义页面（singlePage）
│   ├── archives.html        # 归档
│   ├── tag.html             # 标签文章列表
│   ├── links.html           # 友链
│   ├── error.html           # 错误页（404/500 合并）
│   └── modules/             # 片段
│       ├── header.html      # 头部封面
│       ├── nav.html         # 导航菜单
│       ├── footer.html      # 页脚
│       ├── post-list.html   # 首页文章列表
│       ├── post-content.html # 文章正文 + 上下篇 + 评论
│       ├── tag-posts.html   # 标签文章列表
│       ├── links-list.html # 友链列表
│       ├── pagination.html  # 分页
│       ├── sidebar.html     # 侧栏
│       ├── widget-author.html
│       └── widget-tags.html
├── source/                  # 静态资源（css/js/字体），通过 ${theme.assets.url} 引用
├── theme.yaml
└── settings.yaml
```

## 从 1.x 迁移说明

此版本由 Halo 1.x（FreeMarker `.ftl`）迁移到 Halo 2.x（Thymeleaf `.html`），主要变更：

- 模板引擎：FreeMarker → Thymeleaf
- 变量：`blog_title`→`site.title`、`theme_base`→`theme.assets.url`、`settings.x`→`theme.config.{group}.{field}`
- 标签方法：`<@postTag>`/`<@menuTag>`/`<@linkTag>`/`<@paginationTag>` → Finder API（`postFinder`/`menuFinder`/`tagFinder`/`commentFinder`）与注入的 `Page` 对象
- 文章字段：`post.formatContent`→`post.content.content`、`post.editTime`→`post.spec.publishTime`、`post.thumbnail`→`post.spec.cover`、`post.fullPath`→`post.status.permalink`
- 评论：`<halo-comment>` → `<halo:comment group="content.halo.run" kind="Post" name="...">`
- 自定义页面：`sheet` → `singlePage`
- 友链：依赖 Links 插件注入的 `groups` 变量

# 更新日志

- 2026-07-17 迁移到 Halo 2.x（Thymeleaf），版本 3.0.0
- 2021-11-04 完成大部分代码升级
- 2021-07-06 修改部分 css，优化代码
- 2020-12-28 大致完成主题的移植

旧版本（Halo 1.x）点击查看：https://github.com/Guiyunweb/halo-theme-flex-block/tree/1.1.0