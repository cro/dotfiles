# gnutls-cli
# Autogenerated from man page /opt/local/share/man/man1/gnutls-cli.1.gz
# using Type1
complete -c gnutls-cli -s d -l debug --description 'Enable debugging.'
complete -c gnutls-cli -s V -l verbose --description 'More verbose output.'
complete -c gnutls-cli -l tofu -l no-tofu --description 'Enable trust on first use authentication.'
complete -c gnutls-cli -l dane -l no-dane --description 'Enable DANE certificate verification (DNSSEC).'
complete -c gnutls-cli -l local-dns -l no-local-dns --description 'Use the local DNS server for DNSSEC resolving.'
complete -c gnutls-cli -l ca-verification -l no-ca-verification --description 'Disable CA certificate verification.'
complete -c gnutls-cli -l ocsp -l no-ocsp --description 'Enable OCSP certificate verification.'
complete -c gnutls-cli -s r -l resume --description 'Establish a session and resume.'
complete -c gnutls-cli -s b -l heartbeat --description 'Activate heartbeat support. sp.'
complete -c gnutls-cli -s e -l rehandshake --description 'Establish a session and rehandshake.'
complete -c gnutls-cli -l noticket --description 'Don\'t accept session tickets. sp.'
complete -c gnutls-cli -s s -l starttls --description 'Connect, establish a plain session and start TLS.'
complete -c gnutls-cli -s u -l udp --description 'Use DTLS (datagram TLS) over UDP. sp.'
complete -c gnutls-cli -l mtu --description 'Set MTU for datagram TLS.'
complete -c gnutls-cli -l srtp-profiles --description 'Offer SRTP profiles. sp.'
complete -c gnutls-cli -l crlf --description 'Send CR LF instead of LF. sp.'
complete -c gnutls-cli -l x509fmtder --description 'Use DER format for certificates to read from. sp.'
complete -c gnutls-cli -s f -l fingerprint --description 'Send the openpgp fingerprint, instead of the key. sp.'
complete -c gnutls-cli -l disable-extensions --description 'Disable all the TLS extensions.'
complete -c gnutls-cli -l print-cert --description 'Print peer\'s certificate in PEM format. sp.'
complete -c gnutls-cli -l recordsize --description 'The maximum record size to advertize.'
complete -c gnutls-cli -l dh-bits --description 'The minimum number of bits allowed for DH.'
complete -c gnutls-cli -l priority --description 'Priorities string. sp TLS algorithms and protocols to enable.'
complete -c gnutls-cli -l x509cafile --description 'Certificate file or PKCS #11 URL to use. sp.'
complete -c gnutls-cli -l x509crlfile --description 'CRL file to use. sp.'
complete -c gnutls-cli -l pgpkeyfile --description 'PGP Key file to use. sp.'
complete -c gnutls-cli -l pgpkeyring --description 'PGP Key ring file to use. sp.'
complete -c gnutls-cli -l pgpcertfile --description 'PGP Public Key (certificate) file to use. sp.'
complete -c gnutls-cli -l x509keyfile --description 'X. 509 key file or PKCS #11 URL to use. sp.'
complete -c gnutls-cli -l x509certfile --description 'X. 509 Certificate file or PKCS #11 URL to use. sp.'
complete -c gnutls-cli -l pgpsubkey --description 'PGP subkey to use (hex or auto). sp.'
complete -c gnutls-cli -l srpusername --description 'SRP username to use. sp.'
complete -c gnutls-cli -l srppasswd --description 'SRP password to use. sp.'
complete -c gnutls-cli -l pskusername --description 'PSK username to use. sp.'
complete -c gnutls-cli -l pskkey --description 'PSK key (in hex) to use. sp.'
complete -c gnutls-cli -s p -l port --description 'The port or service to connect to. sp.'
complete -c gnutls-cli -l insecure --description 'Don\'t abort program if server certificate can\'t be validated.'
complete -c gnutls-cli -l ranges --description 'Use length-hiding padding to prevent traffic analysis.'
complete -c gnutls-cli -l benchmark-ciphers --description 'Benchmark individual ciphers. sp.'
complete -c gnutls-cli -l benchmark-soft-ciphers --description 'Benchmark individual software ciphers (no hw acceleration). sp.'
complete -c gnutls-cli -l benchmark-tls-kx --description 'Benchmark TLS key exchange methods. sp.'
complete -c gnutls-cli -l benchmark-tls-ciphers --description 'Benchmark TLS ciphers. sp.'
complete -c gnutls-cli -s l -l list --description 'Print a list of the supported algorithms and modes.'
complete -c gnutls-cli -l disable-sni --description 'Do not send a Server Name Indication (SNI). sp.'
complete -c gnutls-cli -s h -l help --description 'Display usage information and exit.'
complete -c gnutls-cli -s '!' -l more-help --description 'Pass the extended usage information through a pager.'

