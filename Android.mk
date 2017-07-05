# Path of the sources
JNI_DIR := $(call my-dir)

ifeq ($(TARGET_ARCH),mips)
	WITH_BREAKPAD=0
else ifeq ($(TARGET_ARCH),mips64)
	WITH_BREAKPAD=0
else ifeq ($(USE_BREAKPAD),1)
	WITH_BREAKPAD=1
else
	WITH_BREAKPAD=0
endif

ifeq ($(WITH_BREAKPAD),1)
	include breakpad/android/google_breakpad/Android.mk 
endif

LOCAL_PATH := $(JNI_DIR)

# The only real JNI libraries
include $(CLEAR_VARS)
LOCAL_LDLIBS := -llog  -lz
LOCAL_CFLAGS = -DTARGET_ARCH_ABI=\"${TARGET_ARCH_ABI}\"
LOCAL_SRC_FILES := jniglue.c scan_ifs.c
LOCAL_MODULE = opvpnutil
include $(BUILD_SHARED_LIBRARY)
