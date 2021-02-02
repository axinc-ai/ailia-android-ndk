//-----------------------------------------------------------------------
//Android JNI Sample Interface
//-----------------------------------------------------------------------

#include <jni.h>
#include <android/log.h>
#include <cpu-features.h>

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <vector>

#include "ailia.h"

extern "C" {

__attribute__((visibility("default"))) JNIEXPORT jint JNICALL Java_axell_ailia_AILIA_test(JNIEnv *env, jclass obj, jstring filename)
{
	AILIANetwork *net;
	ailiaCreate(&net,0,0);
	ailiaDestroy(net);
	return 0;
}

}
