#!/bin/bash
find /Library/Java/JavaVirtualMachines/*/Contents/Home -maxdepth 0 -type d | xargs -I {} jenv add {}
