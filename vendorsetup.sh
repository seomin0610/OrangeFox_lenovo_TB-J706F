#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

add_lunch_combo omni_J706F-eng
add_lunch_combo omni_J706F-userdebug

# OrangeFox build vars (fox_12.1)
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_AB_DEVICE=1
export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
export OF_FORCE_PREBUILT_KERNEL=1
export FOX_VANILLA_BUILD=1
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"

export OF_MAINTAINER="YourName"
export OF_SCREEN_H=2000
export OF_STATUS_H=80
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_HIDE_NOTCH=1
export OF_CLOCK_POS=1
