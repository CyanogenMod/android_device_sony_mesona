TARGET_USES_LEGACY_BOARD := true

# inherit from the proprietary version
-include vendor/sony/mesona/BoardConfigVendor.mk

#inherit from the common tamsui definitions
-include device/sony/tamsui-common-legacy/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/sony/mesona/include

TARGET_KERNEL_CONFIG := cm_tamsui_mes_defconfig
BOARD_KERNEL_CMDLINE := device/sony/mesona/config/cmdline.txt

# Wifi related defines
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/bcm4330/sdio_g_pool_pno_pktfilter_keepalive_wapi_wme_idsup_idauth_sta_aoe.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/bcm4330/sdio_g_pool_pno_pktfilter_keepalive_wapi_wme_idsup_idauth_apsta_aoe.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/bcm4330/sdio_g_pool_pno_pktfilter_keepalive_wapi_wme_idsup_idauth_p2p_aoe.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"

BOARD_LEGACY_NL80211_STA_EVENTS  := true

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

# Recovery
TARGET_RECOVERY_INITRC := device/sony/mesona/recovery/init.rc
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true


BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p16

TARGET_OTA_ASSERT_DEVICE := ST23i,ST23a,mesona
