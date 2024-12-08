#!/bin/bash
PASSD=~/Yandex.Disk/Tokens/arch.pass
cat $PASSD | sudo -S ryzenadj -i | grep 'STAPM VALUE' | cut -d '|' -f3 | tr -d ' \n'
