#!/usr/bin/bash


response="$(curl -s -o /dev/null -I -w "%{http_code}" http://10.4.1.14:9889)"

if [ "$response" == "200" ]; then
    exit 0
else 
    exit 1
fi 


