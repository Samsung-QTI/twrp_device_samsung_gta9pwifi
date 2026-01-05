# TWRP Recovery configuration for Samsung Galaxy Tab A9+ Wi-Fi (SM-X210)

The Samsung Galaxy Tab A9+ (codename *gta9pwifi*) is an 11.0″ mid-range Wi-Fi-only tablet introduced in October 2023

## Disclaimer
- TWRP does not currently work on devices shipping Himax and Chipone display panels,
if you flash the recovery and find no working touch you are the in the unlucky group.
- All that needs to be done to reverse this, hardware key force restart and the stock
recovery-from-boot.p patch will overwrite stock recovery on the "faulty" TWRP and reboot normally
- In the unlikely case the above fix doesn't work and keeps rebooting into TWRP
You will need to download the stock recovery.img and flash it using heimdall or Odin
which will likewise not destroy device data or trigger a factory reset

- A fix is currently being worked on with a few collaborators interested in fixing
the recovery environment once and for all.

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
