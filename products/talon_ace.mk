# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/ace.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/talon/products/common.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/google/google-vendor.mk)

# Common Files
PRODUCT_COPY_FILES += \
	vendor/talon/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip \

#
# Setup device specific product configuration.
#
PRODUCT_NAME := talon_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := ace
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=htc_wwe/htc_ace/ace:2.3.3/GRI40/87995:user/release-keys PRIVATE_BUILD_DESC="2.50.405.2 CL87995 release-keys"

# Talon Version
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = 0-AR1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=TalonICS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-DesireHD

