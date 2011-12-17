# Generic Talon product
PRODUCT_NAME := lord
PRODUCT_BRAND := lord
PRODUCT_DEVICE := generic

# Include GSM stuff
$(call inherit-product, vendor/talon/products/gsm.mk)

PRODUCT_PACKAGES += \
    Superuser \
    Mms \
    Camera \

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false


PRODUCT_COPY_FILES += \
    vendor/talon/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/talon/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/talon/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/talon/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/talon/prebuilt/common/etc/profile:system/etc/profile \
    vendor/talon/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/talon/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/talon/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/talon/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/talon/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/talon/prebuilt/common/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/talon/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/talon/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/talon/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/talon/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/talon/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/talon/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/talon/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/talon/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

PRODUCT_PACKAGE_OVERLAYS += vendor/talon/overlay/common
