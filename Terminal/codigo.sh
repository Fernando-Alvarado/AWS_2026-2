# Comandos basicos de Linux

echo "Hola, mundo!"

mkdir prueba 
mkdir prueba2 prueba3 preuba4 # Crea varias carpetas a la vez

uname -a # Da informacion del sistema operativo

man echo # Abre el manual del comando echo


# Ejercicio mas completo ----------------------------------------------------------------
mkdir pruebas
cd pruebas

mkdir md5 md4 sha1 sha256 sha512
# Crear un archivo vacío en la carpeta md5
touch md5/ejemplo.txt

# Crear varios archivos a la vez
touch sha1/file1.txt sha1/file2.txt

# Crear archivos en todas sus carpetas
touch md4/test1.txt sha256/test2.txt sha512/test3.txt

echo "Hola MD5" > md5/info.txt
echo "Este es un archivo en SHA1" > sha1/info.txt
echo "Contenido para MD4" > md4/info.txt
echo "Contenido para SHA256" > sha256/info.txt
echo "Contenido para SHA512" > sha512/info.txt
