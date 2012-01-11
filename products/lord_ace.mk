# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/full_ace.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/lord/products/common.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/google/google-vendor.mk)

# Common Files
#PRODUCT_COPY_FILES += \
#	vendor/talon/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip \

#
# Setup device specific product configuration.
#
PRODUCT_NAME := lord_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := ace
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41D 223971 release-keys"

# Lord Version
PRODUCT_VERSION_MAJOR = 0
PRODUCT_VERSION_MINOR = 9
PRODUCT_VERSION_MAINTENANCE = 9

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=LC-ICS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-DesireHD

