#!/bin/bash

count=0
mina=-1
while true; do
	min=$(date +%M)
	i=0
	if [ $mina -ne $min ]; then
		for IMAGES in ~/.wallpapers/*; do
			if [[ $count -le $i ]]; then
				let count=($i+1) 
			fi
			if [ $mina -ne $min ]; then
				let mod=( $min % $count )
				if  [[ $i = $mod ]]; then
					feh --bg-fill $IMAGES
					mina=$min
				fi
			fi
			((i++))
		done
		sleep 58
	fi
done
