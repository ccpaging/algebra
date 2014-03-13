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
 
   参考 <http://demisx.github.io/jekyll/2014/01/13/improve-code-highlighting-in-jekyll.html>
   
 * pygments 普通字符的颜色设置见 [style.css](https://raw.github.com/ccpaging/algebra/gh-pages/css/style.css)
   
{% highlight xml %}
   .highlight, p > pre, p > code, p > nobr > code, li > code, h5 > code, .note > code
{% endhighlight %}
   
 * 按照自适应网页设计（Responsive Web Design）原则进行修改
 
   在 style.css 中增加：
   
{% highlight xml %}
   img { max-width: 100%;}
{% endhighlight %}
 
   参考 <http://www.ruanyifeng.com/blog/2012/05/responsive_web_design.html>
