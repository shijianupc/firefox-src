#!/bin/bash

while read line
do
	echo $line
	wget $line
done < version.txt
