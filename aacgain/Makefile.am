bin_PROGRAMS = aacgain

AACGAIN_EXT_LIBS = $(top_srcdir)/faad2/libfaad/libfaad.la $(top_srcdir)/mp4v2/libmp4v2.la 

# zap DEFAULT_INCLUDES which would have included 
# mp3gain/mpglibDB which contains the wrong config.h
# required to compile the modified faad2 files
DEFAULT_INCLUDES =

# include path
INCLUDES = -I$(top_srcdir)/mp4v2/include \
	-I$(top_srcdir)/mp4v2 \
	-I$(top_srcdir)/faad2/libfaad \
	-I$(top_srcdir)/faad2/include \
	-I$(top_srcdir)/mp3gain

# do a static build (see README.linux for details)
aacgain_LDFLAGS = -static

# source files to build
aacgain_SOURCES = aacgain.cpp decoder.c syntax.c MP4MetaFile.cpp

# library search path
aacgain_LDADD = $(AACGAIN_EXT_LIBS) \
	$(top_builddir)/mp3gain/libmp3gain.la \
	$(top_builddir)/mp3gain/mpglibDBL/libmpglib.la
