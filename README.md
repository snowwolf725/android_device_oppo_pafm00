# android_device_oppo_findx
For building TWRP for OPPO Find X

TWRP device tree for OPPO Find X

Kernel and all blobs are extracted from ColorOS_PAFM00_11_A.30_0f34f247 firmware.

The OPPO Find X are high-end smartphones from OPPO.

OPPO Find X was announced and released in June 2018.

## Device specifications

| Device       | OPPO Find X                                     |
| -----------: | :---------------------------------------------- |
| SoC          | Qualcomm SDM845 Snapdragon 845                  |
| CPU          | 8x Qualcomm® Kryo™ 385 up to 2.8GHz           |
| GPU          | Adreno 630                                      |
| Memory       | 8GB RAM (LPDDR4X)                               |
| Shipped Android version | 8.1                                  |
| Storage      | 128GB / 256GB                                   |
| Battery      | Non-removable Li-Ion 3730 mAh                   |
| Dimensions   | 156.7 x 74.2 x 9.4 mm                           |
| Display      | 1080 x 2340 (19.5:9), 5.42 inch                 |
| Rear camera 1 | 16MP, f/2.0                                    |
| Rear camera 2 | 20MP, f/2.0                                    |
| Front camera | 25MP, f/2.0 1080p 30 fps video                  |

## Device picture

![OPPO Find X](https://cdn2.gsmarena.com/vv/bigpic/oppo-find-x.jpg)

## Features

Works:

Not Working:

- ADB
- Decryption of /data 
- Screen brightness settings
- Vibration on touch 
- Correct screenshot color
- MTP FFS 

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8.1
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/oppo/pafm00" name="snowwolf725/android_device_oppo_pafm00" remote="github" revision="android-8.1" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_pafm00-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

To test it:

```
fastboot boot out/target/product/pafm00/recovery.img
```
## Contributors

## Thanks

