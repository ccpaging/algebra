#!/bin/bash

APP_DIR="$(dirname $0)/.."

echo $APP_DIR

cd ${APP_DIR}/algebra

#1.变量定义
directory=${APP_DIR}
f_encoding="utf-8"
t_encoding="gbk"

#2.遍历子目录
for dir in `ls $directory`
do
	if [ -d $directory/$dir ]
	then
		#3.遍历子目录的文件
		for file in `ls $directory/$dir`
		do
			if [ -e $directory/$dir/$file ]
			then
				echo "$directory/$dir/$file"
				#4.文件类型转换
				#iconv -f $f_encoding -t $t_encoding $directory/$dir/$file -o $directory/$dir/iconv.$file
				#5.删除原始文件
				#if [ $? -eq 0 ]
				#then
				#    rm $directory/$dir/$file
				#fi
			fi
		done
	fi
done
