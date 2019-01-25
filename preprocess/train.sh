#!/bin/bash

set -ex

mkdir -p train/
cd train

for ln_pair in "roen" "enfr"; do
  ../preprocess/${ln_pair}-train.sh
  for suffix in "src" "tgt"; do
    ../scripts/lowercase.py < ${ln_pair}.${suffix} > ${ln_pair}.lc.${suffix}
  done
done

cd -

