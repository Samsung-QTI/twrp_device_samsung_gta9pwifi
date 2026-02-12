# TWRP Recovery for Samsung Galaxy Tab A9+ (Wi-Fi)

The Samsung Galaxy Tab A9+ (codename **gta9pwifi**) is an 11.0″ mid-range tablet released in October 2023. This repository contains the device configuration files for building TWRP recovery.

> [!WARNING]
> **Display Panel Compatibility Issue**
> TWRP does not currently support devices equipped with **Himax** or **Chipone** display panels.
> * **The Symptom:** Recovery will boot, but touch input will not work.
> * **The Fix:** If you encounter this, force restart using hardware keys. If the device bootloops into TWRP, flash the stock `recovery.img` via Odin or Heimdall. This will not wipe your data.
> 
> 

---

## Device Specifications

| Category | Specification |
| --- | --- |
| **SoC** | Qualcomm SM6375 (Snapdragon 695 5G) |
| **GPU** | Adreno 619 |
| **RAM** | 4GB / 8GB |
| **Storage** | 64GB / 128GB (Expandable via microSD) |
| **Display** | 1920 x 1200 (90Hz TFT LCD) |
| **Battery** | 7040 mAh |
| **Android Version** | 13 (Shipped) |

---

## Build Instructions

### 1. Initialize Source

To get started with the Minimal TWRP manifest, you'll need to initialize to local repository:

```bash
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

```

### 2. Sync Repository

Sync the TWRP source:

```bash
repo sync -j$(nproc)

```

### 3. Clone Device Tree

Clone the repo into your source tree:

```bash
git clone -b android-12.1 https://github.com/gta9pwifi-dev/twrp_device_samsung_gta9pwifi device/samsung/gta9pwifi

```

### 4. Build

Start the build. The `vendorsetup.sh` script will automatically handle the `lunch` command for the target:

```bash
. build/envsetup.sh
mka recoveryimage

```

---

## Current State

* [x] ADB
* [x] MTP
* [x] Flashing (Internal/External Storage)
* [ ] Touch support for Himax/Chipone panels (In Progress)
* [ ] Data Decryption (FBE)

---

# Device Picture

![Galaxy Tab A9+ WiFi](https://static.skyassets.com/contentstack/assets/blt0f4f68be78df831b/bltabd4e5b21f118779/6557375d53e8ec84c8c47f6d/a9-plus-tabs-group_Z7UqrS.png "A9+ in Navy and Silver")

---

## Troubleshooting & Recovery

If you find yourself in TWRP with **no touch functionality**, do not panic. Your data is safe. Follow these steps to restore your device to a working state.

### 1. Escape the Recovery Loop

If the device keeps booting back into the non-functional TWRP:

1. Perform a **Hard Restart**: Press and hold **Power + Volume Down** for about 7–10 seconds.
2. As soon as the screen goes black, let go. If it tries to boot TWRP again, you will need to manually enter **Download Mode** to flash the stock recovery.

### 2. Restoring Stock Recovery

You will need the stock `recovery.img` from your specific firmware version.

#### Option A: Using Odin

1. Boot the tablet into **Download Mode**.
2. Open Odin on your PC.
3. Pack your stock `recovery.img` into a `.tar` archive (using 7-Zip or similar).
4. Place the `.tar` file in the **AP** slot.
5. Click **Start**. The device will flash the stock recovery and reboot into Android.

#### Option B: Using Heimdall on Linux

1. Boot into **Download Mode**.
2. Connect to your PC and:

```bash
heimdall flash --RECOVERY recovery.img

```


3. The device will reboot automatically once the flash is complete

> [!NOTE]
> Flashing the stock recovery will **not** trigger a factory reset or delete your apps and photos. It replaces the recovery partition

---

If you want to help yourself, you can grab your touch panel ID using ADB while in TWRP (even if touch doesn't work, ADB usually does):

```bash
adb shell dmesg | grep -i "touch"

```
