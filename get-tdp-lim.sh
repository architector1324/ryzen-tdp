#!/bin/bash
PASSD=~/Yandex.Disk/Tokens/arch.pass
cat $PASSD | sudo -S ryzenadj -i | grep 'STAPM LIMIT' | cut -d '|' -f3 | cut -f1 -d '.' | tr -d ' \n'
