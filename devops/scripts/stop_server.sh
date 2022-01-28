#!/usr/bin/env bash
 sudo kill $(sudo netstat -plnt | grep ':3000' | awk '{print $7}' | cut -d '/' -f 1) || true
