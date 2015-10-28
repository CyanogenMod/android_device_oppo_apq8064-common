#!/sbin/static/busybox sh
set +x
_PATH="$PATH"
export PATH=/sbin

#don't use -f here - this is not a regular file
#Check if an LV for userdata exists, if it does
#this is an LVM configuration and copy LVM fstabs
#and env.  If it doesn't exist, assume a standard config
if [ -e /dev/lvpool/userdata ]; then
    /sbin/static/busybox cp /fstab.qcom.lvm /fstab.qcom
elif [ -e /dev/block/platform/msm_sdcc.1/by-name/sdcard ]; then
    /sbin/static/busybox cp /fstab.qcom.std /fstab.qcom
else
    /sbin/static/busybox cp /fstab.qcom.ufd /fstab.qcom
fi
