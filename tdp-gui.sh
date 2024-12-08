#!/bin/bash

WD=/home/arch/GPD/TDP
get_lim=`$WD/get-tdp-lim.sh | cut -f1 -d '.' | tr -d '\n'`
set_lim=`zenity --scale --value $get_lim --min-value 4 --max-value 35 --text TDP`

$WD/set-tdp.sh $set_lim
