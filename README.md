
Repositorios con scripts para crear un keystore y adicionarle los certificados y cadena de confianza


# keystores.sh
Script que permite crear un keystore asignandole una clave

```command
sh keystores.sh //Users/giovanyvillegas/Documents/ cgc_keystore.jks 123456 cgcpersonas.gcode.com
```


# request.sh
Script para generar un request para firmar un certificado digital


```command
sh request.sh //Users/giovanyvillegas/Documents/ cgc_keystore.jks 123456 cgcpersonas.giosoft.com cgcpersonas.gcode.com.csr.cer
```

# SelfSignCertificate.sh
Script para autofirmar un certificado con una CA propia

```command
sh SelfSignCertificate.sh /Users/giovanyvillegas/Documents/ cgcpersonas.giosoft.com.csr cgcpersonas.gcode.com.csr
```

# trustore.sh
Script para adicionar llaves publicas al trustore

```command
sh trustore.sh //Users/giovanyvillegas/Documents/ cgc_keystore.jks 123456 //Users/giovanyvillegas/Documents/trustore
```

# ImportSignedCertificate.sh
Script para importar certificados firmados

```command
sh trustore.sh //Users/giovanyvillegas/Documents/ cgc_keystore.jks 123456 cgcpersonas.gcode.com.cer
```