---
layout: news_item
title: "Changelog"
date: "2014-03-12 12:41:00 +0200"
author: ccpaging
version: 
categories: [news]
---

Bug Fixed
-----

 * 用中文标点“,；：”代替西文标点“,;:”.  
 * 打开 MathJax 装载提示
 
   `showProcessingMessages: true,`
      
   `messageStyle: "normal"`

 * 导致 Mathjax 页面装载速度慢的原因是

   `MathJax web－font not available`
      
 * 关闭 MathJax web font
   
   `webFont: "",`


Tips
----

 * MathJax 配置参考
   <http://docs.mathjax.org/en/latest/options/HTML-CSS.html>

 * Markdown 格式参考
   <http://kramdown.gettalong.org/quickref.html>

 * Markdown 功能说明
   http://kramdown.gettalong.org/syntax.html
   
 * HTML 实体空格用于调整格式：

   1. `&nbsp;` `&160#;` 不断行的空白（1个字符宽度）

   2. `&ensp;` `&8194#;` 半个空白（1个字符宽度）

   3. `&emsp;` `&8195#;` 一个空白（2个字符宽度）

   4. `&thinsp;` `&8201#;` 窄空白（小于1个字符宽度）

Ideas
----
 
 * 用中文数学部分代替 LaTex 符号以提高网页装载速度。以下摘自[拼音加加输入法](http://dir.jjol.cn/Pyjj/)

   数学符号  
   osxfh=＋－＜＝＞±×÷∈∏∑∕√∝∞∟∠∣∥∧∨∩∪∫∮∴∵∶∷∽≈≌≒≠≡≤≥≦≧≮≯⊕⊙⊥⊿㏒㏑

   大写罗马数字  
   odxlm=ⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩⅪⅫ

   小写罗马数字  
   oxxlm=ⅰⅱⅲⅳⅴⅵⅶⅷⅸⅹ

   大写希腊字母  
   odxxl=ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩ

   小写希腊字母  
   oxxxl=αβγδεζηθικλμνξοπρστυφχψω

   单位符号  
   odwfh=㎎㎏㎜㎝㎞㎡㏄㏎㏕

   货币符号  
   ohbfh=￥＄￡￠¤€

   拼音字母  
   opyzm=āáǎàōóǒòēéěèīíǐìūúǔùǖǘǚǜü


