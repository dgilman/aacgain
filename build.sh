set -ex

AACGAIN_ROOT=$(pwd)
AACGAIN_TARBALL=0
AACGAIN_BUILD=1

while getopts ":tn" opt; do
   case $opt in
      t) AACGAIN_TARBALL=1
         AACGAIN_BUILD=0
         ;;
      n) AACGAIN_BUILD=0
         ;;
   esac
done

echo "travis_fold:start:mp4v2"
mkdir "$AACGAIN_ROOT/mp4v2" && cd "$AACGAIN_ROOT/mp4v2"
wget -O - https://github.com/TechSmith/mp4v2/archive/2.1.0.tar.gz | tar xfz - --strip-components 1
if [ $AACGAIN_BUILD -eq 1 ] ; then
   ./configure
   make libmp4v2.la
fi
echo "travis_fold:end:mp4v2"

echo "travis_fold:start:faad2"
mkdir "$AACGAIN_ROOT/faad2" && cd "$AACGAIN_ROOT/faad2"
wget -O - https://downloads.sourceforge.net/faac/faad2-2.7.tar.bz2 | tar xfj - --strip-components 1
if [ $AACGAIN_BUILD -eq 1 ] ; then
   ./configure
   cd libfaad
   make
fi
echo "travis_fold:end:faad2"

# delete mpglibDBL/config.h?
cd "$AACGAIN_ROOT"
if [ $AACGAIN_BUILD -eq 1 ] || [ $AACGAIN_TARBALL -eq 1 ] ; then
   echo "travis_fold:start:aacgain_autoreconf"
   autoreconf -vif
   echo "travis_fold:end:aacgain_autoreconf"
fi
if [ $AACGAIN_BUILD -eq 1 ] ; then
   echo "travis_fold:start:aacgain_configure"
   ./configure
   echo "travis_fold:end:aacgain_configure"
   make

   "$AACGAIN_ROOT/aacgain/aacgain" -h
fi
