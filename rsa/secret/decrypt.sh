#!  /usr/bin/env bash
### ############################################################################
##! @file       decrypt.sh
##! @brief      Decrypt secret information
##! @author     0xD62EE11516877AA8
##! @date       2016-09-17
##! @copyright  GPLv3+

## Decrypt the secret data
gpg \
    --output secret.tgz \
    --decrypt secret.tgz.gpg

## Unpack the secret data
tar \
    --verbose \
    --extract \
    --gzip \
    --file secret.tgz

## Obliterate the clear-ish secret data bundle, with forced-tinfoil-hat options
shred \
      --verbose \
      --force \
      --zero \
      --remove \
      --iterations=5 \
      secret.tgz 

### end decrypt.sh
### ############################################################################
