#!/bin/bash

tdp_lim=`./get-tdp-lim.sh`
set_tdp=`cat set_tdp`

./get-tdp.sh | tr -d '\n' > get_tdp
echo $tdp_lim > get_tdp_lim

if [ $set_tdp != $tdp_lim ]; then
    ./set-tdp.sh $set_tdp
fi
