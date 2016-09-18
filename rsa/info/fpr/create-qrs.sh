#!  /usr/bin/env bash
### ############################################################################
##! @file       create-qrs.sh
##! @brief      Create QR codes from openpgp4fpr fingerprint
##! @author     0xD62EE11516877AA8
##! @date       2016-09-09
##! @copyright  GPLv3+

if [ ! -d "qr" ] ; then mkdir "qr" ; fi
for t in png svg eps ascii ; do
    echo "Creating ${t}'s"
    if [ ! -d "qr/${t}" ] ; then mkdir "qr/${t}" ; fi
    for l in L M Q H ; do
	cat fpr-openpgp4fpr.txt | qrencode --symversion=1 \
					   --level=${l} --type=${t} \
					   --output=qr/${t}/fpr-level${l}.${t}
    done
done

### end create-qrs.sh
### ############################################################################
