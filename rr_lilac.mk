$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

WITH_VOLTE := false
IS_PE := true

# Inherit device configuration
$(call inherit-product, device/sony/lilac/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### BOOTANIMATION
# vendor/rr/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 720
# vendor/rr/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### FaceUnlockService
TARGET_FACE_UNLOCK_SUPPORTED := true

### RR
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rr_lilac
PRODUCT_DEVICE := lilac
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8441
PRODUCT_MANUFACTURER := Sony
BUILD_VERSION_TAGS := release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lilac \
    PRIVATE_BUILD_DESC="flame-user 11 RP1A.200720.009 6720564 release-keys" \
    BUILD_NUMBER=6720564

# Pixel 4 August fingerprint
BUILD_FINGERPRINT := google/flame/flame:11/RP1A.200720.009/6720564:user/release-keys
#BUILD_FINGERPRINT := Sony/G8441/G8441:9/47.2.A.11.228/3311891731:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-sony-mobile
