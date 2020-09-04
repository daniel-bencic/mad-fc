TGT := mad-fc
BINDIR := bin
OBJDIR := obj
IDIRS := -Iinclude
SRCDIR := src
DRIVERSDIR := drivers
SRCOBJS := $(patsubst $(SRCDIR)/%.c,$(OBJDIR)/$(SRCDIR)/%.o,$(wildcard $(SRCDIR)/*.c))
DRIVERSOBJS := $(patsubst $(DRIVERSDIR)/%.c,$(OBJDIR)/$(DRIVERSDIR)/%.o,$(wildcard $(DRIVERSDIR)/*.c))

ARM = cortex-m7
CC = arm-none-eabi-gcc
CFLAGS = -Wall -Wextra -O0 -mthumb -mcpu=$(ARM) -mfloat-abi=hard -mfpu=fpv5-d16

LDFLAGS = -nostdlib -T stm32f767zi.ld

all: $(TGT)

$(TGT): $(SRCOBJS) $(DRIVERSOBJS) stm32f767zi.o | $(BINDIR)
	$(CC) -o $(BINDIR)/$@ $^ $(LDFLAGS)

$(OBJDIR)/$(SRCDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(CC) -c -o $@ $< $(CFLAGS) $(IDIRS)

$(OBJDIR)/$(DRIVERSDIR)/%.o: $(DRIVERSDIR)/%.c | $(OBJDIR)
	$(CC) -c -o $@ $< $(CFLAGS) $(IDIRS)

stm32f767zi.o: stm32f767zi.s
	$(CC) -c -o $@ $< $(CFLAGS)

$(BINDIR):
	mkdir $(BINDIR)

$(OBJDIR):
	mkdir -p $(OBJDIR)/$(SRCDIR)
	mkdir -p $(OBJDIR)/$(DRIVERSDIR)

.PHONY: load
load:
	openocd -f /usr/share/openocd/scripts/board/stm32f7discovery.cfg


.PHONY: clean
clean:
	rm -rf bin obj *.o
