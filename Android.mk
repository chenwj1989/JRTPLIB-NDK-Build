LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := libjrtplib
LOCAL_CFLAGS = -DJTHREAD_SKIP_PTHREAD_CANCEL
LOCAL_C_INCLUDES := $(LOCAL_PATH)/src $(LOCAL_PATH)/jthread
LOCAL_LDLIBS := 
LOCAL_SRC_FILES :=  \
jthread/jmutex.cpp \
jthread/jthread.cpp \
src/rtcpapppacket.cpp \
src/rtcpbyepacket.cpp \
src/rtcpcompoundpacket.cpp \
src/rtcpcompoundpacketbuilder.cpp \
src/rtcppacket.cpp \
src/rtcppacketbuilder.cpp \
src/rtcprrpacket.cpp \
src/rtcpscheduler.cpp \
src/rtcpsdesinfo.cpp \
src/rtcpsdespacket.cpp \
src/rtcpsrpacket.cpp \
src/rtpcollisionlist.cpp \
src/rtpdebug.cpp \
src/rtperrors.cpp \
src/rtpinternalsourcedata.cpp \
src/rtpipv4address.cpp \
src/rtpipv6address.cpp \
src/rtpipv4destination.cpp \
src/rtpipv6destination.cpp \
src/rtplibraryversion.cpp \
src/rtppacket.cpp \
src/rtppacketbuilder.cpp \
src/rtppollthread.cpp \
src/rtprandom.cpp \
src/rtprandomrand48.cpp \
src/rtprandomrands.cpp \
src/rtprandomurandom.cpp \
src/rtpsession.cpp \
src/rtpsessionparams.cpp \
src/rtpsessionsources.cpp \
src/rtpsourcedata.cpp \
src/rtpsources.cpp \
src/rtptimeutilities.cpp \
src/rtpudpv4transmitter.cpp \
src/rtpudpv6transmitter.cpp \
src/rtpbyteaddress.cpp \
src/rtpexternaltransmitter.cpp \
src/rtpsecuresession.cpp \
src/rtpabortdescriptors.cpp \
src/rtptcpaddress.cpp \
src/rtptcptransmitter.cpp \

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)
