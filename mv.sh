#!/bin/sh
for file in ./*
do
	if test -d $file
	then
		echo $file
		cd $file
		#pwd
		for f in ./*
		do 
			mv $f/* ./
			rm -r $f
		done
		cd ../		 
	fi
done
