# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/full_ace.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/lord/products/common.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/google/google-vendor.mk)

# Inherit proprietary qcom stuff.
$(call inherit-product, vendor/qcom/proprietary/qcom-vendor.mk)

# Common Files
PRODUCT_COPY_FILES += \
	vendor/lord/prebuilt/media/bootanimation_Kenny.zip:system/media/bootanimation.zip \

#
# Setup device specific product configuration.
#
PRODUCT_NAME := htc_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := ace
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=PRODUCT_NAME=htc_ace BUILD_ID=IMM76L BUILD_FINGERPRINT=google/yakju/maguro:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76I 330937 release-keys"
PRODUCT_PLATFORM_VERSION := 4.0.4

# Lord Version
PRODUCT_VERSION_MAJOR = 8
PRODUCT_VERSION_MINOR = 4
PRODUCT_VERSION_MAINTENANCE = AOKP-test
PRODUCT_VERSION_GOOAOKP = 19

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IMM76L

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=IceColdSandwich-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
	ro.goo.developerid=IceCold \
	ro.goo.rom=IceColdAOKP \
	ro.goo.version=$(PRODUCT_VERSION_GOOAOKP)

