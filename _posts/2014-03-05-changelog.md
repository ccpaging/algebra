---
layout: news_item
title: "Changelog"
date: "2014-03-05 16:25:00 +0200"
author: ccpaging
version: 
categories: [news]
---

Bug Fixed
-----

 * Fixed news' url.  
   Since post.url do not have domain. The url in news_contents.html and news_contents_mobile.html should be add {{ "{{ site.url "}}}} before.  
   For example:

{% highlight xml %}
{%raw%}
   <a href="{{ post.url }}">Version {{ post.version }}</a>
{%endraw%}
{% endhighlight %}

   should be

{% highlight xml %}
{%raw%}
   <a href="{{ site.url }}{{ post.url }}">Version {{ post.version }}</a>
{%endraw%}
{% endhighlight %}

   Otherwise, it will be wrong when site.url like:

   [http://ccpaging.github.io/algebra](http://ccpaging.github.io/algebra)

