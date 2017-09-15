noinst_LTLIBRARIES = libmp3gain.la

INCLUDES = -I$(top_srcdir)/aacgain

libmp3gain_la_SOURCES =  mp3gain.c gain_analysis.c apetag.c id3tag.c rg_error.c

SUBDIRS = mpglibDBL
AM_CFLAGS = -DHAVE_MEMCPY -DAACGAIN
AM_CXXFLAGS = -DHAVE_MEMCPY -DAACGAIN
libmp3gain_la_LIBADD = $(top_builddir)/mp3gain/mpglibDBL/libmpglib.la
