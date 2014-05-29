#!/system/bin/sh

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

if [ ! -f "/firmware/image/dsp2.mbn" ]; then
    exit 0
fi
ver=`strings /firmware/image/dsp2.mbn  | grep -B1 "^M9615" | head -1`

tries=15
while [ "$tries" -gt 0 ]; do
    tries=$((tries-1))
    n=$(getprop gsm.version.baseband | wc -l)
    if [ "$n" -gt 0 ]; then
        break
    fi
    sleep 1
done

setprop gsm.version.baseband "$ver"

