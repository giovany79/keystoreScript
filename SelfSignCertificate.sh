echo "ruta request:" $1
echo "nombre request:" $2
echo "alias:" $3

#Crea una CA propia
openssl genrsa -out rootCA.key 2048

#Crea llave publica de CA
openssl req -x509 -new -key rootCA.key -days 3650 -out rootCA.cer \
-subj '/C=AA/ST=AA/L=AA/O=AA Ltd/OU=AA/CN=AA/emailAddress=aa@aa.com'

#Firma el request y genera el certificado
openssl  x509  -req \
-days 365 \
-CA rootCA.cer \
-CAkey rootCA.key \
-CAcreateserial \
-in $1$2 \
-out $3.cer 

# Verifica el certificado firmado
openssl verify -verbose -CAfile rootCA.cer $3.cer