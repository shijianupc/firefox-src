#!/bin/bash
for file in ../firefox-src/*
do
	if test -d $file
	then
		echo $file
		./hmark_3.0.3_linux_x64 -c $file ON
	fi
done
