---
layout: news_item
title: "Changelog"
date: "2014-03-13 12:41:00 +0200"
author: ccpaging
version: 
categories: [news]
---

Bug Fixed
-----

 * 重新设置代码高亮显示风格 [pygments.css](https://raw.github.com/ccpaging/algebra/gh-pages/css/pygments.css)
 
   参考 [Improve Code Highlighting in a Jekyll-based Blog Site](http://demisx.github.io/jekyll/2014/01/13/improve-code-highlighting-in-jekyll.html)
   
 * 取消 pygments 普通字符颜色的，详见 [style.css](https://raw.github.com/ccpaging/algebra/gh-pages/css/style.css)
   
   参考 GitHub 设置
   
{% highlight css %}
  .highlight, p > pre, p > code, p > nobr > code, li > code, h5 > code, .note > code {
      border: 1px solid #ddd;
      background-color: #f8f8f8;
      border-radius: 3px;
      max-width: 100%;
      vertical-align: middle;
   }
{% endhighlight %}
   
 * 按照 [自适应网页设计 Responsive Web Design](http://www.ruanyifeng.com/blog/2012/05/responsive_web_design.html)
   原则进行修改
 
   在 style.css 中增加：
   
{% highlight css %}
   img { max-width: 100%;}
{% endhighlight %}
