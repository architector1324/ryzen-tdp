#!/bin/bash

WD=/home/arch/GPD/TDP
lim=`cat $WD/get_tdp_lim | cut -f1 -d '.' | tr -d '\n'`
zenity --scale --value $lim --min-value 4 --max-value 28 --text TDP > $WD/set_tdp
