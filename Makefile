obj-m := Hello.o

	KERNELDIR = /usr/src/linux-headers-5.8.0-41-generic

all:
	$(MAKE) -C $(KERNELDIR) M=${PWD} modules

clean:
	rm -rf *.o *.ko *.mod.* *.symvers *.order
