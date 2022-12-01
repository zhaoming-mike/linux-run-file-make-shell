#!/bin/bash

DIR=`pwd`
DN=$(echo $RANDOM | md5sum | cut -c 1-8)
INSTALLDIR=$DIR/$DN

if [ -d "$INSTALLDIR" ]; then
    rm -rf "$INSTALLDIR"
fi

ARCHIVE=`awk '/^__ARCHIVE_BOUNDARY__/ { print NR + 1; exit 0; }' $0`

tail -n +$ARCHIVE $0 > $DN.tar.gz
tar -zpxf $DN.tar.gz

rm $DN.tar.gz

exit 0
__ARCHIVE_BOUNDARY__
