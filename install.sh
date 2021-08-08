#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pushd $DIR/..

# See https://github.com/hokuja/pjdb

git clone https://github.com/hanslub42/rlwrap.git
cd rlwrap/
autoreconf --install
./configure
make
make install
cd ..
git clone https://github.com/hokuda/pjdb.git
cd pjdb
pip3 install --user -r requirements.txt
cp pjdb pjdb_filter /usr/local/bin/

popd
