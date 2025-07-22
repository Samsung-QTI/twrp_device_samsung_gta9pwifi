#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gta9pwifi gta9p holi qssi)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
