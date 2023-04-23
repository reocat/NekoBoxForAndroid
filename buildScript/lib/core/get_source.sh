#!/bin/bash
set -e

source "buildScript/init/env.sh"
ENV_NB4A=1
source "buildScript/lib/core/get_source_env.sh"
pushd ..

######
## From nekoray/libs/get_source.sh
######

####
if [ ! -d "sing-box-extra" ]; then
  git clone --no-checkout https://github.com/MatsuriDayo/sing-box-extra.git
fi
pushd sing-box-extra
git checkout "$COMMIT_SING_BOX_EXTRA"

ENV_SING_BOX_EXTRA=1
source $SRC_ROOT/buildScript/lib/core/get_source_env.sh
popd

####
if [ ! -d "sing-box" ]; then
  git clone --no-checkout https://github.com/maskedeken/sing-box.git
fi
pushd sing-box
git checkout "$COMMIT_SING_BOX"
popd

####
if [ ! -d "sing-dns" ]; then
  git clone --no-checkout https://github.com/MatsuriDayo/sing-dns.git
fi
pushd sing-dns
git checkout "$COMMIT_SING_DNS"
popd

####
if [ ! -d "libneko" ]; then
  git clone --no-checkout https://github.com/MatsuriDayo/libneko.git
fi
pushd libneko
git checkout "$COMMIT_LIBNEKO"
popd

popd
