#!/sbin/sh
set +x
_PATH="$PATH"
export PATH=/sbin

/sbin/lvm vgscan --mknodes --ignorelockingfailure
/sbin/lvm vgchange -aly --ignorelockingfailure

#don't use -f here - this is not a regular file
#Check if an LV for userdata exists, if it does
#this is an LVM configuration and copy LVM fstabs
#and env.  If it doesn't exist, assume a standard config
if [ -e /dev/lvpool/userdata ]; then
    sed -i '/sdcard/s/^/#/' /fstab.qcom
    sed -i '/data/s/^/#/' /fstab.qcom
    sed -i '/lvpool/s/^#//' /fstab.qcom
    sed -i '/sdcard/s/^/#/' /etc/recovery.fstab
    sed -i '/data/s/^/#/' /etc/recovery.fstab
    sed -i '/lvpool/s/^#//' /etc/recovery.fstab
elif [ -e /dev/block/platform/msm_sdcc.1/by-name/sdcard ]; then
    sed -i '/lvpool/s/^/#/' /fstab.qcom
    sed -i '/lvpool/s/^/#/' /etc/recovery.fstab
else
    sed -i '/sdcard/s/^/#/' /fstab.qcom
    sed -i '/lvpool/s/^/#/' /fstab.qcom
    sed -i '/sdcard/s/^/#/' /etc/recovery.fstab
    sed -i '/lvpool/s/^/#/' /etc/recovery.fstab
fi
