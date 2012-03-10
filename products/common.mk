# Generic Lord product
PRODUCT_NAME := lord
PRODUCT_BRAND := lord
PRODUCT_DEVICE := generic

# Include GSM stuff
$(call inherit-product, vendor/lord/products/gsm.mk)

PRODUCT_PACKAGES += \
    Superuser \
    Mms \
    Camera

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
    vendor/lord/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/lord/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/lord/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/lord/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/lord/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/lord/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/lord/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/lord/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/lord/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/lord/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/lord/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
    vendor/lord/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    vendor/lord/prebuilt/setup/overlay:system/setup/overlay

# InitD startup tweaks in ROMControl
PRODUCT_COPY_FILES += \
    vendor/lord/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/lord/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/lord/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/lord/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/lord/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/lord/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/lord/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/lord/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/lord/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/lord/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/lord/prebuilt/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/lord/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/lord/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf
    
# Cron
PRODUCT_COPY_FILES += \
    vendor/lord/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/lord/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/lord/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/lord/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/lord/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/lord/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/lord/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 
