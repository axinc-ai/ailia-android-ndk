# ailia-android-ndk

Sample project for android ndk of ailia SDK

## Test environment

Android ndk r19c

## Setup

Put ailia libraries here. 1.2.6 is version number.

```
library/android/arm64-v8a/libailia-1.2.6-c++_static.a 
library/android/armeabi-v7a/libailia-1.2.6-c++_static.a 
library/android/x86/libailia-1.2.6-c++_static.a 
library/android/x86_64/libailia-1.2.6-c++_static.a 
```

## Build

Run below command on root folder.

```
ndk-build
```

## Output

```
ailia-android-ndk kyakuno$ ndk-build
[armeabi-v7a] Compile++ thumb: ailia <= main.cpp
[armeabi-v7a] Compile thumb  : cpufeatures <= cpu-features.c
[armeabi-v7a] StaticLibrary  : libcpufeatures.a
[armeabi-v7a] SharedLibrary  : libailia.so
[armeabi-v7a] Install        : libailia.so => libs/armeabi-v7a/libailia.so
```
