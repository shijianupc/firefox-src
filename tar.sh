#!/bin/bash
str="source"
for file in `ls *.tar.bz2`
	do
		echo $file
		dir_path=`echo $file | cut -d"-" -f2 | cut -d"." -f1-3`
		result=$(echo $dir_path | grep "${str}")
		if [[ "$result" != "" ]]
		then
			dir_path=`echo $dir_path | cut -d"." -f1-2`
		fi
		mkdir $dir_path
		#echo $dir_path
		tar -xjf $file -C $dir_path
		sleep 60
	done
#for file in `ls *.tar.xz`
#	do
#		echo $file
#		dir_path=`echo $file | cut -d"-" -f2 | cut -d"." -f1-3`
#		result=$(echo $dir_path | grep "${str}")
#                if [[ "$result" != "" ]]
#                then
#                        dir_path=`echo $dir_path | cut -d"." -f1-2`
#                fi
#		mkdir $dir_path
#		#echo $dir_path
#                tar -xJf $file -C $dir_path
#		sleep 60
#	done
