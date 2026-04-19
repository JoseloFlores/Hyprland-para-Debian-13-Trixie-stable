#!/bin/bash

if command -v apt &> /dev/null; then
    apt list --upgradable 2>/dev/null | grep -c upgradable
elif command -v checkupdates &> /dev/null; then
    checkupdates | wc -l
elif command -v dnf &> /dev/null; then
    dnf check-update --quiet | grep -c '^[a-zA-Z]'
else
    echo "0"
fi
