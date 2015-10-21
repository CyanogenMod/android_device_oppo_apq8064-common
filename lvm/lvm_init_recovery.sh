#!/sbin/sh
set +x
_PATH="$PATH"
export PATH=/sbin

/sbin/lvm vgscan --mknodes --ignorelockingfailure
/sbin/lvm vgchange -aly --ignorelockingfailure

