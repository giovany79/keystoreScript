
echo "ruta Keystore:" $1
echo "keystore:" $2
echo "clave keystore:" $3
echo "alias:" $4



keytool -certreq \
-alias $4 \
-keystore $1$2 \
-storepass $3 \
-file $1$4.csr