openssl pkcs12 -in $1 -nocerts -out $1.key -nodes
openssl rsa -in $1.key -out $1.key
openssl pkcs12 -in $1 -nokeys -out $1.crt
