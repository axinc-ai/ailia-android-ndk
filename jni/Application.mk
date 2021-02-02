APP_OPTIM := release

ifndef ARMEABI
	APP_ABI := armeabi-v7a
else
	APP_ABI := $(ARMEABI)
endif

APP_PLATFORM := android-16
APP_STL := c++_static
