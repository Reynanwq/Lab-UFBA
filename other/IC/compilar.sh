#!/usr/bin/env bash

SECONDS=0

export PATH=~/Castalia/omnetpp-4.6/bin:$PATH
export PATH=$PATH:~/Castalia/omnetpp-4.6/bin
export LD_LIBRARY_PATH=~/Castalia/omnetpp-4.6/lib
which opp_makemake
make clean
./makemake
make


duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."



