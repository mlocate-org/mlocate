#!/bin/sh
set -e

gnulib-tool --import --dir=. --lib=libgnu --source-base=gnulib/lib \
    --m4-base=gnulib/m4 --doc-base=doc --aux-dir=admin --no-libtool \
    --macro-prefix=gl \
    canonicalize-lgpl config-h d-type error fnmatch-gnu fwriteerror \
    gettext-h mbsstr mempcpy obstack progname safe-read stat-time \
    strchrnul timespec verify xalloc

mkdir -p m4
autoreconf -fis
