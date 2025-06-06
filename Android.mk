LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),a04br3)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif