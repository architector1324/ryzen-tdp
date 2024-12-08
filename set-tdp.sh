#!/bin/bash

pwr=$(($1 * 1000))

STPL=$pwr
FPPTL=$(($pwr + 2000))
SPPTL=$pwr

slow_time=128
stamp_time=64
tctl_temp=95
vrm_current=180000
vrmsoc_current=180000
vrmmax_current=180000
vrmsocmax_current=180000
apu_skin_temp_limit=90
dgpu_skin_temp=90
skin_temp_limit=90

PASSD=~/Yandex.Disk/Tokens/arch.pass
cat $PASSD | sudo -S ryzenadj -a $STPL -b $FPPTL -c $SPPTL -d $slow_time -e $stamp_time -f $tctl_temp -g $vrm_current -j $vrmsoc_current -k $vrmmax_current -l $vrmsocmax_current --apu-skin-temp=$apu_skin_temp_limit --skin-temp-limit=$skin_temp_limit --dgpu-skin-temp=$dgpu_skin_temp
