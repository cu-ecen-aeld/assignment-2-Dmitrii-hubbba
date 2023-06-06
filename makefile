CC=/usr/local/armgcc/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc

writer: writer.c
ifeq ($(CROSS_COMPILE), aarch64-none-linux-gnu-)
	#CC = aarch64-none-linux-gnu-gcc
	#OBJCOPY = aarch64-none-linux-gnu-objcopy
	$(CC) writer.c -o writer
	@echo "1"
else
	gcc writer.c -o writer
	@echo "2"
endif

#writer: writer.c
#	gcc writer.c -o writer

clean:
	rm -f *.o writer
