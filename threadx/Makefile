JSON_DIR := $(THREADX_SRC_DIR)/$(src)

ccflags-y += -Wno-strict-prototypes
ccflags-y += -I$(abspath $(JSON_DIR))/../threadx

libjson-objs += \
	../json_object_iterator.o \
	../json_object.o \
	../json_c_version.o \
	../json_pointer.o \
	../json_util.o \
	../json_tokener.o \
	../json_visit.o \
	../arraylist.o \
	../libjson.o \
	../linkhash.o \
	../printbuf.o \
	../random_seed.o \
	../strerror_override.o

obj-y += libjson.a
install-files += libjson.a
