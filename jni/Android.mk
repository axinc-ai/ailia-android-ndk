LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
ARMEABI := armeabi-v7a
LOCAL_MODULE := libailia-st
LOCAL_SRC_FILES := ../library/android/$(ARMEABI)/libailia-1.2.6-c++_static.a
include $(PREBUILT_STATIC_LIBRARY)
include $(CLEAR_VARS)
LOCAL_CFLAGS += -DANDROID -DNDEBUG
LOCAL_CPPFLAGS += -I ./include -fvisibility=hidden
LOCAL_CPPFLAGS += -fexceptions
LOCAL_MODULE := libailia
LOCAL_ARM_MODE := arm
LOCAL_ARM_MODE := thumb
LOCAL_SRC_FILES+= main.cpp
LOCAL_LDLIBS := -lm -lz -llog -ldl -landroid
LOCAL_STATIC_LIBRARIES := cpufeatures libailia-st
include $(BUILD_SHARED_LIBRARY)
$(call import-module,android/cpufeatures)
