---
title: 建。。建站手册？🗝
date: 2019-08-11 20:44:53
tags: Hello World
cover_img: https://s2.ax1x.com/2019/08/12/exGipd.png
feature_img: https://s2.ax1x.com/2019/08/12/exGipd.png
description: First try on Hexo
keywords: Hello World
---

[TOC]

# 修改历史

| 时间      | 内容                       |
| --------- | -------------------------- |
| 2019-8-12 | 初稿                       |
| 2019-8-29 | 完善图片显示和其他格式问题 |

# 前言

**🕘 预计配置时间**： 3hours

**🖥 完成配之后将拥有：**

1. 一个github仓库作为数据存储的静态博客

2. 基本功能齐全，前端还算不错的个人博客，省得自己搭架子

   ![blog](https://s2.ax1x.com/2019/08/29/mbAVyQ.png)

3. 采用hexo博客框架，[Casper](https://github.com/xzhih/hexo-theme-casper)作为模板，自动渲染md，一键部署到github

4. 模板自身支持发布文章，阅读文章，新建页面，分类，标签

5. 自己添加了一些功能可以手动写md实现时间轴，增加了流量统计



# 折腾过程实录

**1. github page**

​	要部署到github的话，先搞一个github仓库，直接google一下[github page](https://www.google.com/search?q=github+page&oq=github+page&aqs=chrome..69i57j35i39j69i60l4.2108j0j4&sourceid=chrome&ie=UTF-8)咋整就行了，这一步注意仓库的名字有特殊的要求，不然后面会显示不出来东西。

**2. hexo**

​	同上，google一下[hexo](https://hexo.io/zh-cn/docs/)的安装过程

​	这里可以稍微熟悉一下几个命令

```shell
hexo new post helloworld
hexo clean  # 清空一下之前生成的文件，如果修改不生效可以试试这个命令，先清空一下
hexo g      # generate，编译渲染
hexo d      # deploy，自动部署
```



**3. hexo部署到github page上**

​	google之[hexo整合github](https://hexo.io/zh-cn/docs/deployment)

​	这里可以稍微注意一下，部署的分支和资源存储的分支是分开的，部署的分支github貌似要求是master，资源可以新建一个分支

**4. pick一个主题**

​	这里我选了[Casper](https://github.com/xzhih/hexo-theme-casper)作为模板，另外有一个模板看起来也不错👉[icarus](https://blog.zhangruipeng.me/hexo-theme-icarus/about/)。下面的内容都是根据我选择的Casper展开。

​	更换主题就是直接把Casper的github repo（具体地址在上面链接👆）clone到**themes**文件夹下。

​	稍微解释一下这些个文件夹都是干啥的，之后有用。

```
├── README.md
├── _config.yml          # 配置文件，可以配置很多东西，之后会介绍
├── languages            # 语言包，直接在配置文件里面设置zh-CN就是中文了
│   ├── default.yml
│   ├── fr.yml
│   ├── nl.yml
│   ├── no.yml
│   ├── ru.yml
│   ├── zh-CN.yml
│   └── zh-TW.yml
├── layout               # 布局文件，自定义一些布局基本都在这里修改
│   ├── _layout.swig
│   ├── _partials
│   ├── archive.swig
│   ├── category.swig
│   ├── index.swig
│   ├── page.swig
│   ├── post.swig
│   └── tag.swig
├── scripts
│   └── index.js
└── source               # 源文件，配合布局一起修改
    ├── css
    ├── fonts
    ├── img
    └── js
```

**5. 配置主题**

​	这一步主要是修改**_config**这个文件，这里有俩config，一个是博客根目录的config，一个是**themes/hexo-casper**里的config，都可以配置，重点说一下主题里面的那个config

![_config](https://s2.ax1x.com/2019/08/29/mbAtm9.png)

参考我这个稍微配置一下就行了，另外[Casper](https://github.com/xzhih/hexo-theme-casper)里面写的很清楚了，照着改改就差不多了



**6. 增加流量统计**

​	提了issue问怎么统计流量，回答说有个评论系统自带了流量统计功能，但是注册过程比较麻烦，就放弃了。这里采用[不蒜子](http://ibruce.info/2015/04/04/busuanzi/)，很是方便，而且速度很快，只要简单配置一下就可以了。

配置之前先详细解释一下layout的结构：

```shell
├── _layout.swig            # 页面总体布局（修改基本没用到它）
├── _partials               # 小组件，方便复用
│   ├── about.swig            # 这个就是ABOUT界面上面的那些小东西，见下面图例
│   ├── footer.swig           # 注脚，见下面图例
│   ├── head.swig
│   ├── header.swig
│   ├── index.swig
│   ├── javascript.swig
│   ├── page.swig
│   ├── post.swig
│   ├── public
│   │   ├── fload-header.swig
│   │   ├── icons
│   │   ├── json-ld.swig
│   │   ├── nav.swig
│   │   ├── social.swig
│   │   └── toc.swig
│   ├── search.swig
│   ├── widget                # 这三个就是分类、tag和recent
│   │   ├── category.swig
│   │   ├── recent_posts.swig
│   │   └── tagcloud.swig
│   └── widget.swig
├── archive.swig              # archive页面的布局
├── category.swig
├── index.swig
├── page.swig
├── post.swig
└── tag.swig
```

_partials/about.swig:

![about](https://s2.ax1x.com/2019/08/29/mbAUT1.png)

_partials/foot.swig:

![foot](https://s2.ax1x.com/2019/08/29/mbAdFx.png)

**7. 将分类写到导航栏上面**

```
hexo new page xxx
```

这个命令可以新建一个导航页面，但是只是单独的一页文章。如果要把categories的每个分类放到导航栏上面，可以稍作修改。

方法一：

在**config**里面修改：

```
menu:
  ABOUT: /about
  ARCHIVES: /archives
  TEST: /categories/test/
```

这样手动可以把某个分类添加到导航栏上面。

方法二：

观察**layout/_partails/widget/categories**中的写法，发现只要添加一行代码就可以添加link到指定分类的链接。故只要在**layout/_partails/public/nav.swig**中修改如下：（绿色的注释）

![nav](https://s2.ax1x.com/2019/08/29/mbVkrQ.png)

**8. 给页面加上阴影**

因为项目中将css全部整合到**allinonecss.min.css**中，因此要直接修改这个css文件，修改其他的css文件不生效！！！

全局搜索

```
.post-full-content
```

添加css

```
box-shadow:0px 16px 16px #E0E0E0;
border-radius: 8px;
```

即可添加shadow和圆角

**8. 添加时间线**

这个可以通过手写markdown来手动实现时间线

首先在**scripts/index.js**最后添加如下代码：（来自<http://channingsun.bid/2016/05/10/20160510_%E7%BB%99%E5%8D%9A%E5%AE%A2%E6%B7%BB%E5%8A%A0Timeline/>）

```js
//timeline
hexo.extend.tag.register('timeline', function(args, content){
	date = args[0]
	time = args[1]
	logo = args[2]
	var result = '';
	result += '<blockquote>';
	logo = '<span class="fa-stack fa-lg"><i class="fa ' + logo + ' fa-stack-1x"></i></span>';
	result += hexo.render.renderSync({text: logo + content, engine: 'markdown'});
	footer = '<span>' + date + ' ' + time + '</span>'
	result += '<footer>' + footer + '</footer>';
	result += '</blockquote>';
	return result;
}, {ends: true});
```

然后只要写

```
{% timeline 2015-01-23 18:38:26 fa-lg %} 第一篇博客 {% post_link hello-world hello-world %} {% endtimeline %}
```

即可跳转到对应的博客

也可以适当调整一下js里面的内容，比如表情和time可以删掉







