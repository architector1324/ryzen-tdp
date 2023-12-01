#!/bin/bash

pwr=$(($1 * 1000))
ryzenadj -a $pwr -b $pwr -c $pwr
