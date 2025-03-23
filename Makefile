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

# -fsanitize=address not work on mingw
# -m32 to cross compile for 32 bit target
ifeq ($(DEBUG),Y)
	CFLAGS  = -g -Wall -DPDCDEBUG -fsanitize=address -fno-omit-frame-pointer
	LDFLAGS = -g -fsanitize=address
else
	CFLAGS  = -m32 -O2 -Wall -Wpedantic -Wextra
	LDFLAGS = -m32
# CFLAGS  = -O2 -Wall -Wpedantic -Wextra
# LDFLAGS = 
endif

# CFLAGS += -I$(PDCURSES_SRCDIR)

.PHONY: clean

try1.exe:	try1.o
	$(LINK) $(LDFLAGS) -o$@ $<

try1.o: try1.cpp
	$(CC) -c $(CFLAGS) -o$@ $<

try2.exe:	try2.o
	$(LINK) $(LDFLAGS) -o$@ $<

try2.o: try2.cpp
	$(CC) -c $(CFLAGS) -o$@ $<

tryFile.exe:	tryFile.o
	$(LINK) $(LDFLAGS) -o$@ $<

tryFile.o: tryFile.cpp
	$(CC) -c $(CFLAGS) -o$@ $<

clean:
	-$(RM) *.o
	-$(RM) *.exe
	-$(RM) $(CLEAN)
