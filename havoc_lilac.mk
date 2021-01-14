$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

WITH_VOLTE := false
IS_PE := false

# Inherit device configuration
$(call inherit-product, device/sony/lilac/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### BOOTANIMATION
# vendor/havoc/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 720
# vendor/havoc/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### Havoc Stuffs
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_PIXEL_WALLPAPER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
IS_PHONE := true
WITH_GAPPS := true

# Maintainer
HAVOC_MAINTAINER := Shashank Verma (shank03)
HAVOC_GROUP_URL := https://t.me/havoc_lilac

### FaceUnlockService
TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK := false

### HAVOC
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := havoc_lilac
PRODUCT_DEVICE := lilac
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8441
PRODUCT_MANUFACTURER := Sony
BUILD_VERSION_TAGS := release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lilac \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.210105.003 7005429 release-keys" \
    BUILD_NUMBER=7005429

# Pixel 5 January fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys
#BUILD_FINGERPRINT := Sony/G8441/G8441:9/47.2.A.11.228/3311891731:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-sony-mobile
