#!/usr/bin/env bash

truncate -s 0b ./rand_10G.data
dd if=/dev/random of=./rand_10G.data bs=1M count=$(( 1*10*1024 )) status=progress