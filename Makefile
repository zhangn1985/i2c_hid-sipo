#
# Makefile for the I2C input drivers
#


obj-m			:= i2c-hid-sipo.o

i2c-hid-sipo-objs	:=  i2c-hid-core.o i2c-hid-dmi-quirks.o

KDIR := /usr/lib/modules/$(shell uname -r)/build
PWD  := $(shell pwd)

default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

install:
	$(MAKE) -C $(KDIR) M=$(PWD) modules_install
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
