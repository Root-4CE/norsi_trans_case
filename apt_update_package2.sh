#!/bin/bash

apt update

if apt list --upgradable | grep "package2" &> /dev/null; then
    apt install --only-upgrade -y "package2"
else
    exit 0
fi