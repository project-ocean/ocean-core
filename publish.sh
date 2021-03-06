#!/bin/bash
# Upload Windows exe files to https://github.com/project-ocean/windows-binaries/node/

EQUIBIT_VERSION=0.2.1
BUILD_TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

echo "--------------------- Publishing Core Binaries ---------------------"
git clone https://$GH_USR:$GH_TKN@github.com/project-ocean/windows-binaries.git
cd windows-binaries/node && mkdir ${EQUIBIT_VERSION}
cp -f /home/travis/build/project-ocean/equibit-core/build/equibit-x86_64-w64-mingw32/src/*.exe ${EQUIBIT_VERSION}
git add *
git commit -m "Equibit binaries updated on ${BUILD_TIMESTAMP}"
git push origin master

