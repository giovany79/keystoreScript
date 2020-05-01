echo "ruta Keystore:" $1
echo "keystore:" $2
echo "clave keystore:" $3
echo "alias:" $4
echo "certificado:" $5


keytool -import -trustcacerts \
-alias $4 \
-file $5 \
-keystore $1$2
-storepass $3 \