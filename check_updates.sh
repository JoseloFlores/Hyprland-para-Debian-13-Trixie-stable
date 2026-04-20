#!/bin/bash

# Define the icon to use
ICON="󰚰"

if command -v apt &> /dev/null; then
    # Use LC_ALL=C to ensure "upgradable" regardless of system language
    count=$(LC_ALL=C apt list --upgradable 2>/dev/null | grep -c "upgradable")
elif command -v checkupdates &> /dev/null; then
    count=$(checkupdates | wc -l)
elif command -v dnf &> /dev/null; then
    count=$(dnf check-update --quiet | grep -c '^[a-zA-Z]')
else
    count=0
fi

if [ "$count" -gt 0 ]; then
    echo "$ICON $count"
else
    echo ""
fi
