When you build 

```
rm -rf build-ESP32_GENERIC_S3
idf.py fullclean
```

unalias python and reload your idf.py

```bash
    unalias python
    . $HOME/esp-idf/export.sh
    cd ~/Webprojects/micropython/ports/esp32
    make BOARD=ESP32_GENERIC_S3 submodules
    make make BOARD=ESP32_GENERIC_S3
```


Once you get a successfull build

```bash
Generated /Users/kristemmerman/WebProjects/micropython/ports/esp32/build-ESP32_GENERIC_S3/micropython.bin
```


now we need to figure out how to add the esp32-camera driver



```bash


    cd ~/esp/esp-idf/components
    git clone https://github.com/espressif/esp32-camera
    git checkout [CHECK-HASH-ABOVE]

    ```
    ```bash

    cd micropython/ports/esp32
    make USER_C_MODULES=../../../camera-module/micropython.cmake BOARD=ESP32_GENERIC_S3_CAM all
    ```