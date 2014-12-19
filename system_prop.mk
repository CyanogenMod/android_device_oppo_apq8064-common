# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196608

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qmienabled=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=true \
    ro.baseband.arch=mdm \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.ril_class=OppoRIL \
    ro.use_data_netmgrd=true

# Thermal
PRODUCT_PROPERTY_OVERRIDES += \
    persist.thermal.monitor=true

# Time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.wireless=WCN3660 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15
