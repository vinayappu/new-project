#!/bin/bash
space = `df-h .|awk -F " " '{ print $(NF -1)}'|sed 's/%/ /g'`
if [ $space -ge $90 ]; then
echo " disk memory space more than 90%, please take action"|mail -s "memory alert" abc@test.com
fi
