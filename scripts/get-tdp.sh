#!/bin/bash
ryzenadj -i | grep 'STAPM VALUE' | cut -d '|' -f3 | tr -d ' \n'
