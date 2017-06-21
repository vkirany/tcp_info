#This won't work if the CONFIG_NET_TCPINFO isn't already configured 
#for the kernel 
#obj-$(CONFIG_NET_TCPINFO) += tcp_info.o

obj-m += tcp_info.o

all: modules

modules:
                make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

modules_install:
                make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules_install

clean:
                make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean                     
