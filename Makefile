obj-m := Hello.o

	KERNELDIR = /lib/modules/5.8.0-41-generic/build/

all:
	$(MAKE) -C $(KERNELDIR) M=${PWD} modules

clean:
	rm -rf *.o *.ko *.mod.* *.symvers *.order
