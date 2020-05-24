JRTPLIB for NDK Build
=======


This is a fork of [JRTPLIB](https://github.com/j0r1/JRTPLIB), which is a popular RTP library written. The library is written in C++ and can be used as the JNI RTP library for Android applications. The original README is renamed README.original.

This fork does nothing but building suitable libjrtplib.so for all Android ABIs (armeabi-v7a, arm64-v8a, x86 and x86_64).  

Changes to the original repository can be found in commit [babff5f](https://github.com/chenwj1989/JRTPLIB-NDK-Build/commit/babff5ffa0162b4e74dadbff199adbf6ab4f2fc5), which include

* Adding build scripts for ndk.\
  new file:   Android.mk  \
  new file:   Application.mk \
  new file:   ndk_build.sh

* Include [JTHREAD](https://github.com/j0r1/JThread). You can change path of JTHREAD source files in Android.mk according to your directory.  \
  new file:   jthread/jmutex.cpp \
	new file:   jthread/jmutex.h \
	new file:   jthread/jmutexautolock.h \
	new file:   jthread/jthread.cpp \
	new file:   jthread/jthread.h \
	new file:   jthread/jthreadconfig.h 
	

* Adapt some header files for building: \
	new file:   src/rtptypes.h \
	new file:   src/rtplibraryversioninternal.h \
	modified:   src/rtpsocketutilinternal.h

When building, replace "*/home/test/android-ndk-r21b/ndk-build*" in ndk_build.sh with your own ndk path, and then run \
  ./ndk_build.sh. 

The ourput libraries locates at ./libs, including:

	libs/arm64-v8a/libjrtplib.so 
	libs/armeabi-v7a/libjrtplib.so 
	libs/x86/libjrtplib.so 
	libs/x86_64/libjrtplib.so

* Consolidate header files into libs folder： \
	libs/include/jrtplib \
	libs/include/jthread 


