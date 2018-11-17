# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common GZOSP stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := gzosp_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM6.171019.030.H1 4903069 release-keys"

BUILD_FINGERPRINT := google/bullhead/bullhead:8.1.0/OPM6.171019.030.H1/4903069:user/release-keys
   
# Google property overides
#PRODUCT_PROPERTY_OVERRIDES += \
    #ro.control_privapp_permissions=permissive \
    #ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    #ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    #ro.com.google.clientidbase=android-google \
    #ro.error.receiver.system.apps=com.google.android.gms \
    #ro.setupwizard.enterprise_mode=1 \
    #ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    #ro.setupwizard.rotation_locked=true \
    #ro.opa.eligible_device=true
