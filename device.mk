DEVICE_PACKAGE_OVERLAYS := device/lge/vm701/overlay

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/com.stericsson.hardware.fm.receiver.xml:system/etc/permissions/com.stericsson.hardware.fm.receiver.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/CHANGELOG-CM.txt:system/etc/CHANGELOG-CM.txt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/root/init.vm701.rc:root/init.vm701.rc \
    $(LOCAL_PATH)/root/ueventd.vm701.rc:root/ueventd.vm701.rc \
    $(LOCAL_PATH)/root/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/root/init.qcom.sh:root/init.qcom.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gelato_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    $(LOCAL_PATH)/configs/gelato_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/configs/adreno_config.txt:system/etc/adreno_config.txt \
    $(LOCAL_PATH)/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/999youtube:system/etc/init.d/999youtube

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/extras.sh:system/bin/extras.sh \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    ro.vold.umsdirtyratio=20

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    com.qc.hdmi_out=false \
    debug.sf.hw=1 \
    debug.enabletr=false \
    debug.composition.type=mdp \
    debug.gr.numframebuffers=2 \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    debug.performance.tuning=1 \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    persist.sys.strictmode.visual=false

PRODUCT_PROPERTY_OVERRIDES += \
    video.accelerate.hw=1 \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    gsm.sim.operator.alpha = Virgin Mobile
    gsm.sim.operator.numeric = 311490
    gsm.sim.operator.iso-country = us
    gsm.operator.alpha = Virgin Mobile
    gsm.operator.numeric = 311490
    gsm.operator.iso-country = us
    gsm.sim.state=READY

PRODUCT_PACKAGES += \
    audio_policy.vm701 \
    audio.primary.vm701 \
    audio.a2dp.default \
    libaudioutils

PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    hwcomposer.msm7x27

PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    gps.msm7x27 \
    librpc \
    lights.vm701 \
    camera.msm7x27 \
    lgapversion

PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh
PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    hwaddrs

# Charger - uncomment when needed
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/root/checkbootreason:root/sbin/checkbootreason
# PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_ani_02.rle:root/chargerimages/battery_wait_ani_02.rle \
#    $(LOCAL_PATH)/chargemode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
#    $(LOCAL_PATH)/chargemode/chargerlogo:root/sbin/chargerlogo

PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
