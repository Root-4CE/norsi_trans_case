#!/bin/bash

yum check-update

if yum list updates "pckg02" &> /dev/null; then
    yum update -y "pckg02"
else
    exit 0
fi
