#!/bin/bash

cmnd=`code --list-extensions`
printf "%s\n" "$cmnd"
total=`echo "$cmnd" | wc -l`
echo -e "\nTotal extension: $total"
