#!/bin/bash
ryzenadj -i | grep 'STAPM LIMIT' | cut -d '|' -f3 | cut -f1 -d '.' | tr -d ' \n'
