#!/bin/bash

SRC=$1
DEST="$SRC.txt"

TEMP="/tmp/$SRC.txt"
TEMP1="/tmp/$SRC_1.txt"

pandoc --toc --toc-depth=2 -R --default-image-extension=png --mathjax -s $SRC -o $TEMP

sed 's#\\begin{example}#\n***\n\n[ **例** ] #g' $TEMP > $TEMP1
sed 's#\\end{example}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{example\*}#\n***\n\n[ **例** ] #g' $TEMP > $TEMP1
sed 's#\\end{example\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{analyse\*}#[ **审题** ] #g' $TEMP > $TEMP1
sed 's#\\end{analyse\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{problem}#[ **问题** ] #g' $TEMP > $TEMP1
sed 's#\\end{problem}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{property}#[ **问题** ] #g' $TEMP > $TEMP1
sed 's#\\end{property}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{notice\*}#[ **注意** ]\n#g' $TEMP > $TEMP1
sed 's#\\end{notice\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{answer\*}#[ **解** ] #g' $TEMP > $TEMP1
sed 's#\\end{answer\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{answeri\*}#[ **解1** ] #g' $TEMP > $TEMP1
sed 's#\\end{answeri\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{answerii\*}#[ **解2** ] #g' $TEMP > $TEMP1
sed 's#\\end{answerii\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{answeriii\*}#[ **解3** ] #g' $TEMP > $TEMP1
sed 's#\\end{answeriii\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{checktable\*}#[ **查表** ]\n#g' $TEMP > $TEMP1
sed 's#\\end{checktable\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{explain\*}#[ **说明** ]\n#g' $TEMP > $TEMP1
sed 's#\\end{explain\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\begin{verify\*}#[ **检验** ] #g' $TEMP > $TEMP1
sed 's#\\end{verify\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\bgroup##g' $TEMP > $TEMP1
sed 's#\\egroup##g' $TEMP1 > $TEMP

sed 's#\\begin{remark\*}#<div class="note warning">\n<h5>备注</h5>\n</div>#g' $TEMP > $TEMP1
sed 's#\\end{remark\*}#\n#g' $TEMP1 > $TEMP

sed 's#\\execmargin{{}}#<div class="note">\n<h5>习题</h5>\n</div>#g' $TEMP > $TEMP1
sed 's#\\execmargina{{}}#<div class="note">\n<h5>习题</h5>\n</div>#g' $TEMP1 > $TEMP

sed 's#\\nexecmargin{{}}#<div class="note">\n<h5>习题</h5>\n</div>#g' $TEMP > $TEMP1
sed 's#\\enskip{}# #g' $TEMP1 > $TEMP

sed 's#\\qquad{}# #g' $TEMP > $TEMP1
sed 's#\\quad{}# #g' $TEMP1 > $TEMP

sed 's#\\rule\[0.5ex\]{2em}{1pt}#--#g' $TEMP > $TEMP1
sed 's#\\vspace{-2ex}##g' $TEMP1 > $TEMP

sed 's#{{\\phantom{M}}}##g' $TEMP > $TEMP1
sed 's#\\~#~#g' $TEMP1 > $TEMP

#用中文标点“,；：”代替西文标点“,;:”

cp $TEMP $DEST

#Geany
#replace "\\\\\n" to "  \n"
#replace "** ] \n" to "** ] " 


