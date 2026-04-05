#!/usr/bin/env bash

if pgrep "pcmanfm"  >/dev/null; then
        wlrctl window focus pcmanfm
else
        pcmanfm 2>&1 &
fi
