set -ex

AACGAIN_ROOT=$(pwd)

cd "$AACGAIN_ROOT/mp4v2"
./configure
make libmp4v2.la

cd "$AACGAIN_ROOT/faad2"
./configure
cd libfaad
make

# delete mpglibDBL/config.h?
cd "$AACGAIN_ROOT"
autoreconf -vif
./configure
make
