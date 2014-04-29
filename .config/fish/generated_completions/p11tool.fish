# p11tool
# Autogenerated from man page /opt/local/share/man/man1/p11tool.1.gz
# using Type1
complete -c p11tool -s d -l debug --description 'Enable debugging.'
complete -c p11tool -l outfile --description 'Output file. sp.'
complete -c p11tool -l list-tokens --description 'List all available tokens. sp.'
complete -c p11tool -l export --description 'Export the object specified by the URL. sp.'
complete -c p11tool -l list-mechanisms --description 'List all available mechanisms in a token. sp.'
complete -c p11tool -l list-all --description 'List all available objects in a token. sp.'
complete -c p11tool -l list-all-certs --description 'List all available certificates in a token. sp.'
complete -c p11tool -l list-certs --description 'List all certificates that have an associated private key. sp.'
complete -c p11tool -l list-all-privkeys --description 'List all available private keys in a token. sp.'
complete -c p11tool -l list-all-trusted --description 'List all available certificates marked as trusted. sp.'
complete -c p11tool -l initialize --description 'Initializes a PKCS #11 token. sp.'
complete -c p11tool -l write --description 'Writes the loaded objects to a PKCS #11 token.'
complete -c p11tool -l delete --description 'Deletes the objects matching the PKCS #11 URL. sp.'
complete -c p11tool -l generate-rsa --description 'Generate an RSA private-public key pair.'
complete -c p11tool -l generate-dsa --description 'Generate an RSA private-public key pair.'
complete -c p11tool -l generate-ecc --description 'Generate an RSA private-public key pair.'
complete -c p11tool -l label --description 'Sets a label for the write operation. sp.'
complete -c p11tool -l trusted -l no-trusted --description 'Marks the object to be written as trusted.'
complete -c p11tool -l private -l no-private --description 'Marks the object to be written as private.'
complete -c p11tool -l login -l no-login --description 'Force login to token.'
complete -c p11tool -l detailed-url -l no-detailed-url --description 'Print detailed URLs.'
complete -c p11tool -l secret-key --description 'Provide a hex encoded secret key. sp.'
complete -c p11tool -l load-privkey --description 'Private key file to use. sp.'
complete -c p11tool -l load-pubkey --description 'Public key file to use. sp.'
complete -c p11tool -l load-certificate --description 'Certificate file to use. sp.'
complete -c p11tool -s 8 -l pkcs8 --description 'Use PKCS #8 format for private keys. sp.'
complete -c p11tool -l bits --description 'Specify the number of bits for key generate.'
complete -c p11tool -l sec-param --description 'Specify the security level.'
complete -c p11tool -l inder -l no-inder --description 'Use DER/RAW format for input.'
complete -c p11tool -l inraw --description 'This is an alias for the --inder option.'
complete -c p11tool -l provider --description 'Specify the PKCS #11 provider library.'
complete -c p11tool -s h -l help --description 'Display usage information and exit.'
complete -c p11tool -s '!' -l more-help --description 'Pass the extended usage information through a pager.'

