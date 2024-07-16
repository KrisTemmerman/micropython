set(IDF_TARGET esp32s3)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    ${SDKCONFIG_IDF_VERSION_SPECIFIC}
    boards/sdkconfig.usb
    boards/sdkconfig.ble
    boards/sdkconfig.spiram_sx
    boards/ESP32_GENERIC_S3_CAM/sdkconfig.board
)


list(APPEND MICROPY_DEF_BOARD
    MICROPY_HW_BOARD_NAME="krisdevs esp32s3 with camera"
)
