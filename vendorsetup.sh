#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# For building with minimal manifest
export ALLOW_MISSING_DEPENDENCIES=true

# OrangeFox Recovery
export OF_USE_GREEN_LED=0
export FOX_USE_NANO_EDITOR=1
export OF_SKIP_FBE_DECRYPTION=1
export FOX_DELETE_AROMAFM=1
export FOX_ENABLE_APP_MANAGER=1
export OF_MAINTAINER=gta9pwifi-dev
export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
export TW_DEFAULT_LANGUAGE="en"
export LC_ALL="C"
export OF_FLASHLIGHT_ENABLE=0
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export FOX_ASH_IS_BASH=1
export FOX_USE_XZ_UTILS=1
export OF_ENABLE_LPTOOLS=1
export OF_PATCH_AVB20=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export FOX_VERSION=R11.1_1