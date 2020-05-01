echo "ruta Keystore:" $1
echo "keystore:" $2
echo "clave keystore:" $3
echo "alias:" $4

#Genera el keystore
keytool -genkey \
-alias $4 \
-keystore $1/$2 \
-keyalg RSA \
-keysize 2048 \
-storepass $3 \
-validity 365 \
-dname "cn=Bancolombia.com.co, ou=VICEPRESIDENCIA_DE_TECNOLOGIA, o=Bancolombia, c=CO"

# Muestra el contenido del keystore
keytool -list -keystore $1/$2 
