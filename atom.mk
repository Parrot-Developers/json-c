LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := json
LOCAL_DESCRIPTION := JSON-C
LOCAL_CATEGORY_PATH := libs

LOCAL_EXPORT_LDLIBS := -ljson-c

# Compatibility link
LOCAL_CREATE_LINKS := \
	usr/include/json:json-c \
	usr/lib/libjson.a:libjson-c.a

ifneq ("$(TARGET_FORCE_STATIC)","1")
LOCAL_CREATE_LINKS += \
	usr/lib/libjson.so:libjson-c.so
endif

# Do not error out on implicit fallthrough in switch statements. json-c is
# full of them, and they are all intentional. There is no easy way to disable
# this specific type of warnings, so we stop treating all warnings as errors.
LOCAL_CFLAGS += -Wno-error

include $(BUILD_CMAKE)
