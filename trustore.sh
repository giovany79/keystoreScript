echo "ruta Keystore:" $1
echo "keystore:" $2
echo "clave keystore:" $3
echo "ruta cadena de confianza:" $4


for entry in "$4"/*.cer
do
  echo $entry
  echo "$(basename -- $entry)"

  #keytool -import -trustcacerts -alias "$(basename -- $entry)" -file $entry -keystore $1$2 -storepass $3 
  
  keytool -import  -alias "$(basename -- $entry)" -file $entry -keystore $1$2 -storepass $3 -noprompt

done

# Muestra el contenido del keystore
keytool -list -keystore $1/$2 -storepass $3