#!/bin/bash

# Compiling Cython module: cyadd
python3 setup.py build_ext --inplace

mv cyadd*.so corefuns/cyadd.so

# seting up permissions
#chmod u+x preprocessgwas.sh
chmod u+x scripts/*.sh
chmod u+x scripts/plink
chmod u+x cassi.sh

export CURRENTDIR=`pwd`
export PYTHONPATH=$CURRENTDIR/scripts
export PATH=$CURRENTDIR/scripts/:$PATH
export PATH=$CURRENTDIR/:$PATH
alias plink=$CURRENTDIR/scripts/plink

