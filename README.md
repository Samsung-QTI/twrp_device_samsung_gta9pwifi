# TWRP Recovery configuration for Samsung Galaxy Tab A9+ Wi-Fi (SM-X210)

The Samsung Galaxy Tab A9+ (codename *gta9pwifi*) is an 11.0″ mid-range Wi-Fi-only tablet introduced in October 2023

# Build:
## Initialize the TWRP manifest
```bash 
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
```

## Clone repo
```bash 
git clone -b android-12.1 https://github.com/gta9pwifi-dev/twrp_device_samsung_gta9pwifi device/samsung/gta9pwifi
```

## To build
```bash
. build/envsetup.sh
lunch twrp_gta9pwifi-eng
mka recoveryimage
```

# Device Picture
![Galaxy Tab A9+ WiFi](https://static.skyassets.com/contentstack/assets/blt0f4f68be78df831b/bltabd4e5b21f118779/6557375d53e8ec84c8c47f6d/a9-plus-tabs-group_Z7UqrS.png "A9+ in Navy and Silver")