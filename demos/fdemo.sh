#!/usr/bin/env bash
# rricharz 2019

wait1s() {
# let tek4010 wait 5 seconds (not this script, which just shuffles stuff into the buffer!)
for i in {1..15}
  do
    printf '\007'
  done
}

cat dodekagon.plt

wait1s

for filename in pltfiles/*.plt
do
    # erase screen
    printf '\033\014'
    printf '\0338'
    cat "$filename"
    wait1s
done

for filename in pltfiles/More_pltfiles/*.plt
do
    # erase screen
    printf '\033\014'
    printf '\0338'
    cat "$filename"
    wait1s
done

for filename in pltfiles/ICEMD_pltfiles/*.plt
do
    # erase screen
    printf '\033\014'
    printf '\033:'
    cat "$filename"
    wait1s
done

for filename in pltfiles//PointPlot/*.plt
do
    # erase screen
    printf '\033\014'
    printf '\0338'
    cat "$filename"
    wait1s
done



