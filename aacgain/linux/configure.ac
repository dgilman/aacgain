# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.59])
AC_INIT([aacgain], [1.9])
AM_INIT_AUTOMAKE([no-define foreign])
AC_CONFIG_SRCDIR([aacgain/aacgain.h])
AC_CONFIG_HEADERS([mp3gain/mpglibDBL/config.h])
AC_CONFIG_MACRO_DIR([m4])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC

# Init libtool
LT_INIT

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h inttypes.h memory.h stddef.h stdint.h stdlib.h string.h unistd.h utime.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_INT16_T
AC_TYPE_INT32_T
AC_TYPE_INT64_T
AC_TYPE_INT8_T
AC_TYPE_SIZE_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([floor ftruncate memmove memset pow sqrt strcasecmp strdup strerror strrchr strstr utime])

AC_CONFIG_FILES([Makefile
                 aacgain/Makefile
                 mp3gain/Makefile
                 mp3gain/mpglibDBL/Makefile])
AC_OUTPUT
