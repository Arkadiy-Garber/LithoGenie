#!/usr/bin/env bash

# setting colors to use
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

gzip -d HMMs.tar.gz
tar xf HMMs.tar
rm HMMs.tar

gzip -d test_dataset.tar.gz
tar xf test_dataset.tar
rm test_dataset.tar
