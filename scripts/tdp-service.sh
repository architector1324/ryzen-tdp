#!/bin/bash

WD=/home/arch/GPD/TDP

tdp_lim=`$WD/scripts/get-tdp-lim.sh`
set_tdp=`cat $WD/set_tdp`

$WD/scripts/get-tdp.sh | tr -d '\n' > $WD/get_tdp
echo $tdp_lim > $WD/get_tdp_lim

if [ $set_tdp != $tdp_lim ]; then
    $WD/scripts/set-tdp.sh $set_tdp
fi
