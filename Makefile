O = o
E = .exe

ifeq ($(OS),Windows_NT)
	# RM = cmd /c del
	# use this with mingw32-make
	RM = rm -f
else
	RM = rm -f
endif

CC		= g++
AR		= ar
STRIP		= strip
LINK		= g++
WINDRES		= windres

ifeq ($(DEBUG),Y)
	CFLAGS  = -g -Wall -DPDCDEBUG
	LDFLAGS = -g
else
	CFLAGS  = -O2 -Wall
	LDFLAGS = 
endif

# CFLAGS += -I$(PDCURSES_SRCDIR)

.PHONY: clean

try1.exe:	try1.o
	$(LINK) $(LDFLAGS) -o$@ try1.o

try1.o: try1.cpp
	$(CC) -c $(CFLAGS) -o$@ $<

clean:
	-$(RM) *.o
	-$(RM) *.exe
	-$(RM) $(CLEAN)
