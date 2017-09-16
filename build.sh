set -ex

AACGAIN_ROOT=$(pwd)

echo "travis_fold:start:mp4v2"
mkdir "$AACGAIN_ROOT/mp4v2" && cd "$AACGAIN_ROOT/mp4v2"
wget -O - https://github.com/TechSmith/mp4v2/archive/2.1.0.tar.gz | tar xfz - --strip-components 1
./configure
make libmp4v2.la
echo "travis_fold:end:mp4v2"

echo "travis_fold:start:faad2"
mkdir "$AACGAIN_ROOT/faad2" && cd "$AACGAIN_ROOT/faad2"
wget -O - https://downloads.sourceforge.net/faac/faad2-2.7.tar.bz2 | tar xfj - --strip-components 1
./configure
cd libfaad
make
echo "travis_fold:end:faad2"

# delete mpglibDBL/config.h?
cd "$AACGAIN_ROOT"
echo "travis_fold:start:aacgain_autoreconf"
autoreconf -vif
echo "travis_fold:end:aacgain_autoreconf"
echo "travis_fold:start:aacgain_configure"
./configure
echo "travis_fold:end:aacgain_configure"
make

"$AACGAIN_ROOT/aacgain/aacgain" -h
