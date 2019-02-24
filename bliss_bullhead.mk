# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common bliss stuff.
$(call inherit-product, vendor/bliss/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE

# Bliss stable identifier
BLISS_VERSION_MAINTENANCE:= Stable

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM7.181205.001 5080180 release-keys"

BUILD_FINGERPRINT := google/bullhead/bullhead:8.1.0/OPM7.181205.001/5080180:user/release-keys

# Apps
PRODUCT_PACKAGES += \
    Camera2 \
    Gallery2 \
    Calendar \
    DeskClock \
    Email

# Chromium
USE_CHROMIUM := true
