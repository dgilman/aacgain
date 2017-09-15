#!/bin/bash
# prepare.sh
# sets up linux build environment for aacgain
# based on original aacgain linux build system by
# Prakash Punnoor

# run this script cd'ed to its directory in
# <topdir>/aacgain/linux

echo Testing for required software subdirs in root directory...

if [ ! -e "../../mp3gain" ]; then
  echo ../../mp3gain not found!
  exit 1
fi

if [ ! -e "../../aacgain" ]; then
  echo ../../aacgain not found!
  exit 1
fi

if [ ! -e "../../mp4v2" ]; then
  echo ../../mp4v2 not found!
  exit 1
fi

if [ ! -e "../../faad2" ]; then
  echo ../../faad2 not found!
  exit 1
fi

echo Testing for required libs...

if [ ! -e "../../mp4v2/libmp4v2.la" ]; then
  echo ../../mp4v2/libmp4v2.la not found!
  echo Did you run mp4v2/configure and make?
  exit 1
fi

if [ ! -e "../../faad2/libfaad/libfaad.la" ]; then
  echo ../../faad2/libfaad/libfaad.la not found!
  echo Did you run faad2/configure and make?
  exit 1
fi


echo Patching mp3gain to build on Linux...
#copy over automake Makefiles to correct location
cp -p Makefile.am.mp3gain ../../mp3gain/Makefile.am
cp -p Makefile.am.mpglibDBL ../../mp3gain/mpglibDBL/Makefile.am
#remove obsolete config.h; a correct one will be created by automake's configure
rm -f ../../mp3gain/mpglibDBL/config.h
#correct header include paths
patch -p0 -N <mp3gain.patch

echo Creating the configure script
cp -p configure.ac ../..
cp -p Makefile.am.topsrcdir ../../Makefile.am
pushd ../..
autoreconf -vif
popd

echo to build aacgain:
echo "   mkdir build"
echo "   cd build"
echo "   ../../../configure"
echo "   make"
echo If everything goes right, your aacgain executable will be
echo located in the build/accgain directory.
echo 
echo To reduce binary size, run strip -s on the executable.
