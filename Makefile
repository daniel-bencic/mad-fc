TGT := mad-fc
BINDIR := bin
OBJDIR := obj
IDIRS := -Iinclude
SRCDIR := src
OBJS := $(patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(wildcard $(SRCDIR)/*.c))

ARM = cortex-m7
CC = arm-none-eabi-gcc
CFLAGS = -Wall -Wextra -Os -mthumb -mcpu=$(ARM) -mfloat-abi=hard -mfpu=fpv5-d16

LDFLAGS = -nostdlib -T stm32f767zi.ld

all: $(TGT)

$(TGT): $(OBJS) stm32f767zi.o | $(BINDIR)
	$(CC) -o $(BINDIR)/$@ $^ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(CC) -c -o $@ $< $(CFLAGS) $(IDIRS)

stm32f767zi.o: stm32f767zi.s
	$(CC) -c -o $@ $< $(CFLAGS)

$(BINDIR):
	mkdir $(BINDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

.PHONY: load
load:
	openocd -f /usr/share/openocd/scripts/board/stm32f7discovery.cfg


.PHONY: clean
clean:
	rm -rf bin obj *.o
