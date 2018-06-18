#!/bin/bash
a=$(xrandr | grep "1280x1024+0+0" | awk '{print$1}')
b=$(xinput -list | grep "ILITEK" | awk '{print$5}')
c=($b)
pre="id="
c1=${c[0]#$pre}
c2=${c[1]#$pre}
xinput map-to-output $c1 $a
xinput map-to-output $c2 $a

