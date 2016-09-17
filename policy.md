<!--#########################################################################-->
<!-- @file       policy.md -->
<!-- @brief      Cryptographic key policies. -->
<!-- @author     0xD62EE11516877AA8 -->
<!-- @date       2016-09-17 -->
<!-- @copyright  GPLv3 -->

# Key Policy
**NOTICE:** 
The policies and procedures outlined in this document, 
while strictly adhered to, are not legally binding and represent not but 
a good-faith effort to ensure trust and cryptographic integrity. 
Use at your own risk.

## Key Protection
Keys are generated on offline (air-gapped) hardware. 
Encryption, data signing and authentication are always performed using a 
[GnuPG SmartCard](https://en.wikipedia.org/wiki/OpenPGP_card) 
and the sub-keys used for these cryptographic operations are never 
stored on hardware connected to a network. 
Certification of other keys is always performed on offline hardware 
and the master (certifying) key is never stored on hardware connected to a 
network. 

Keys are protected with unique high-entropy (128+ bit) passphrases and 
(12 digit) personal identification numbers known only to me. 
Passphrases and PINs have never been, and will never be, stored on any media, 
whether electronic or analogue; they are kept exclusively in the meat buffer. 
Keys, passphrases, PINs, and storage media are never shared with anyone 
or reused for any other purpose.

All software, firmware, and hardware are kept up to date.

## Data Encryption
I steadfastly refuse to transmit or store previously encrypted data in an 
non-encrypted form. I will strongly favor using encryption when transmitting 
data. 

## Data Signing
I will only sign data which I have personally created or *thoroughly* inspected. 
Signatures are only valid at the time of signing. 

## Key Certification
### Motivation
The following outlines both my strictly enforced requirements for 
certifying a key/UID and, by extension, what is implied by my signature 
on a key. 
Note that key certification is always performed on offline hardware.

My *Casual* and *Positive* policies are designed to reflect the fact 
that I am much less interested in a key holder's identity as endorsed by a 
state or a corporate entity than I am in verifying the key holder's humanity. 
This allows me to verify commonly disaffected key holders, 
such as transgender or stateless people, with the same veracity as others. 

### Certification Types
Each level of certification includes the requirements of the lower levels.

 - **0x10: Generic** Uncategorized
   - "I don't understand the question, and I won't respond to it."
 - **0x11: Persona** Typically used for group, shared, corporate, or 
   software-release keys.
   - Carefully verify fingerprint against declared values 
	 using a secure channel different from the channel over which the key 
	 is received. For example, if I receive a key from a key-server then I will 
	 carefully verify the fingerprints as published with on an HTTPS website.
 - **0x12: Casual** Typically used for pseudo-anonymous or other keys for which 
   I am convinced a human being is in control.
   - Proof of control of key and contact address using encryption and signing 
	 *and*
   - Pass the 
	 [Turing Test](https://en.wikipedia.org/wiki/Turing_test) or 
	 [Voigt-Kampff Test](https://en.wikipedia.org/wiki/Blade_Runner#Voight-Kampff_machine)
	 as administered by me. 
 - **0x13: Positive** Typically used for keys belonging to human beings that 
   I can positively identify.
   - Two forms of identifying documents with at least one state issued *or*
   - Video conversation *or*
   - I know the key holder personally *or*
   - I control the key.

Note that I will certify a new key from a holder under the conditions that the 
both new and old keys: 
 - are certified and fully trusted by each other,
 - the UID match exactly and
 - the UID contact information is re-verified. 

<!--end policy.md -->
<!--#########################################################################-->
