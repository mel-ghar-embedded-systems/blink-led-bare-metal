CC=arm-none-eabi-gcc
CFLAGS= -mthumb -mcpu=cortex-m4

SRCS_DIR=./srcs/
OBJS_DIR=./objs/
BINS_DIR=./bins/
DEBUG=./debug/
TARGET=blink

all: $(TARGET)

$(OBJS_DIR)main.o:$(SRCS_DIR)main.c
	$(CC) $(CFLAGS) -c  $^ -o $@

$(OBJS_DIR)startup.o:$(SRCS_DIR)startup.c
	$(CC) $(CFLAGS) -c  $^ -o $@

$(TARGET): $(SRCS_DIR)linker.ld $(OBJS_DIR)main.o $(OBJS_DIR)startup.o
	$(CC) $(CFLAGS) -nostdlib -T $(SRCS_DIR)linker.ld -Wl,-Map=$(DEBUG)final.map $(OBJS_DIR)*.o -o $(BINS_DIR)$(TARGET)


upload:
	openocd -f board/st_nucleo_f4.cfg

clean:
	rm -f $(OBJS_DIR)* $(BINS_DIR)* $(DEBUG)*

re: clean all
